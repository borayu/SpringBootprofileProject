package com.javabora.profile_web.dao;


import java.util.ArrayList;

import com.javabora.profile_web.dto.BoardDto;
import com.javabora.profile_web.dto.MemberDto;

public interface IDao {
	
	//q_board 조작 dao
	public ArrayList<BoardDto> listDao();//리스트 가져오기
	public void writeDao(String qid, String qname, String qcontent, String qemail);//글쓰기
	public BoardDto viewDao(String qnum);//게시판 글보기
	public void deleteDao(String qnum);//글지우기
	public void modifyDao(String qname, String qcontent, String qemail, String qnum);//글 수정
	
	//pmember 조작 dao
	public void joinDao(String mid, String mpw, String mname, String memail);//회원 가입
	public MemberDto loginOkDao(String mid);//로그인 성공 여부 체크
	public int checkIdDao(String mid);//아이디 존재여부 체크
	public int checkPwDao(String mid, String mpw);//아이디와 비밀번호 일치여부 체크
	public void memberInfoModifyOkDao(String mpw, String mname, String memail, String mid);//회원정보 수정
	

}