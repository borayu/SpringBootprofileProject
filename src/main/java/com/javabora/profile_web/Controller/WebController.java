package com.javabora.profile_web.Controller;

import org.springframework.stereotype.Controller;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javabora.profile_web.dao.IDao;
import com.javabora.profile_web.dto.MemberDto;

@Controller
public class WebController {
	
	@Autowired
	private SqlSession sqlSession;	
	
	@RequestMapping(value = "/")
	public String home() {		
		
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String index() {		
		
		return "index";
	}
	
	@RequestMapping(value = "/login")
	public String login() {		
		
		return "login";
	}
	
	@RequestMapping(value = "/join")
	public String join() {		
		
		return "join";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() {		
		
		return "profile";
	}
	
	@RequestMapping(value = "/question")
	public String question() {		
		
		return "question";
	}
	
	@RequestMapping(value = "/contact")
	public String contact() {		
		
		return "contact";
	}
	
	@RequestMapping(value = "/joinOk", method = RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag = dao.checkIdDao(request.getParameter("id"));
		//입력받은 아이디가 DB에 존재하면 1, 아니면 0이 반환
		
		model.addAttribute("checkIdFlag", checkIdFlag);
		//checkIdFlag=1이면 아이디 사용중, 0이면 신규 가입가능
		
		if (checkIdFlag != 1) {
			dao.joinDao(request.getParameter("id"), request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"));
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", request.getParameter("id"));
			//세션에 가입성공된 아이디를 저장하여 로그인까지 하게 함
			
			model.addAttribute("mname", request.getParameter("name"));
			model.addAttribute("mid", request.getParameter("id"));
		}
		
		return "joinOk";
	}
	
	@RequestMapping(value="/logout")
	public String logout() {
		
		return "logout";
	}
	
	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag = dao.checkIdDao(request.getParameter("id"));
		//입력받은 아이디가 DB에 존재하면 1, 아니면 0이 반환
		int checkPwFlag = dao.checkPwDao(request.getParameter("id"), request.getParameter("pw"));
		//입력받은 아이디와 그 아이디의 비밀번호가 일치하면 1, 아니면 0이 반환
		
		model.addAttribute("checkIdFlag", checkIdFlag);
		//checkIdFlag=1이면 로그인 하려는 아이디가 존재함(로그인 가능)
		model.addAttribute("checkPwFlag", checkPwFlag);
		//checkPwFlage=1이면 아이디와 그 아이디의 비밀번호가 일치하므로 로그인 가능
		
		if (checkPwFlag == 1) {
			
			MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", memberDto.getMid());			
			session.setAttribute("name", memberDto.getMname());
			//로그인 성공시 세션에 아이디와 이름 저장
			
			model.addAttribute("mname", memberDto.getMname());
			model.addAttribute("mid", memberDto.getMid());
		}
		
		return "loginOk";
	}
	
	@RequestMapping(value="/infoModify")
	public String infoModify(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sessionId = (String) session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		MemberDto memberDto = dao.loginOkDao(sessionId);
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModify";
	}
	
	@RequestMapping(value="/infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.memberInfoModifyOkDao(request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"), request.getParameter("id"));
		
		MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModifyOk";
	}
	
	@RequestMapping(value = "/write")
	public String write(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(request.getParameter("qid"), request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.listDao());
		
		return "list";
	}
	
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("qview", dao.viewDao(request.getParameter("qnum")));		
		
		return "qview";
	}
	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("qnum"));
		
		return "delete";
	}
	
	@RequestMapping(value = "/modify")
	public String modify(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyDao(request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"), request.getParameter("qnum"));		
		
		return "redirect:list";
	}

}
