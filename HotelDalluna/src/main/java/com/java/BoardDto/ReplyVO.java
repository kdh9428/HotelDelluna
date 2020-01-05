package com.java.BoardDto;

import java.util.Date;

public class ReplyVO {
	
	private int replyid; //리플 번호
	private int notice_number; //board테이블 번호
	private String context; //리플내용
	private String customer_id;	//작성자 아이디
	private Date reg_dt;	//작성일
	private Date edit_dt;	//수정일
	public int getReplyid() {
		return replyid;
	}
	public void setReplyid(int replyid) {
		this.replyid = replyid;
	}
	public int getNotice_number() {
		return notice_number;
	}
	public void setNotice_number(int notice_number) {
		this.notice_number = notice_number;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public Date getEdit_dt() {
		return edit_dt;
	}
	public void setEdit_dt(Date edit_dt) {
		this.edit_dt = edit_dt;
	}
	
	
	
	
}
