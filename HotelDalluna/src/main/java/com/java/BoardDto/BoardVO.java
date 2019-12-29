package com.java.BoardDto;

import java.util.Date;

public class BoardVO {

	private int notice_number;//번호
	private String notice_title;//제목
	private String notice_contents;//내용
	private String customer_id; //작성자
	private int ref;//조회수
	private Date notice_date;//작성일
	private String boardpw;
	
	public int getNotice_number() {
		return notice_number;
	}
	public void setNotice_number(int notice_number) {
		this.notice_number = notice_number;
	}
	public String getBoardpw() {
		return boardpw;
	}
	public void setBoardpw(String boardpw) {
		this.boardpw = boardpw;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_contents() {
		return notice_contents;
	}
	public void setNotice_contents(String notice_contents) {
		this.notice_contents = notice_contents;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
}
