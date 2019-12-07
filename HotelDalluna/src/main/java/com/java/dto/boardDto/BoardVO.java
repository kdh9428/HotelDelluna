package com.java.dto.boardDto;

import java.util.Date;

public class BoardVO {

	private String notice_number;//번호
	private String notice_title;//제목
	private String notice_contents;//내용
	private Date notice_date;//날짜
	private int ref;//읽은 수
	
	public String getNotice_number() {
		return notice_number;
	}
	public void setNotice_number(String notice_number) {
		this.notice_number = notice_number;
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
