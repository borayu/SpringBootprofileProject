package com.javabora.profile_web.dto;

public class BoardDto {
	
	private int qnum;//게시판번호
	private String qid;//게시판 글쓴사람 아이디
	private String qname;//게시판 글쓴사람 이름
	private String qcontent;//글 내용
	private String qemail;//게시판 글쓴 사람 이메일
	private String qdate;//게시판에 글쓴 날짜(시간)
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int qnum, String qid, String qname, String qcontent, String qemail, String qdate) {
		super();
		this.qnum = qnum;
		this.qid = qid;
		this.qname = qname;
		this.qcontent = qcontent;
		this.qemail = qemail;
		this.qdate = qdate;
	}

	public int getQnum() {
		return qnum;
	}

	public void setQnum(int qnum) {
		this.qnum = qnum;
	}

	public String getQid() {
		return qid;
	}

	public void setQid(String qid) {
		this.qid = qid;
	}

	public String getQname() {
		return qname;
	}

	public void setQname(String qname) {
		this.qname = qname;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQemail() {
		return qemail;
	}

	public void setQemail(String qemail) {
		this.qemail = qemail;
	}

	public String getQdate() {
		return qdate;
	}

	public void setQdate(String qdate) {
		this.qdate = qdate;
	}

	
	
	
	
}
