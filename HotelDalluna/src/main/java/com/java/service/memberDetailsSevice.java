package com.java.service;

import java.util.List;

import com.java.dto.memberDetails;

public interface memberDetailsSevice {

	//로그인
	public int singup(memberDetails details) throws Exception;
	
	//비밀번호와 2차 비밀번호 검사
	public int doubleCheck(String customer_id) throws Exception;
	
	//회원정보 수정 패스워드 검사
	public boolean userPassword(String password)throws Exception;
	
	//회원 정보 불러오기
	public List<memberDetails> userInformation() throws Exception;
	
	//회원 정보 수정
	public boolean userModify(memberDetails details) throws Exception;
}
