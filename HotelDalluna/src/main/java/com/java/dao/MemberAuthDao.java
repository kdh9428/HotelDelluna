package com.java.dao;

import java.util.List;

import com.java.dto.memberDetails;

public interface MemberAuthDao {

	public memberDetails getUserById(String customer_id);
	
	//회원가입
	public int singup(memberDetails details);
	
	//ajax id check 
	public int doubleCheck(String customer_id) throws Exception;
	
	//ajax 비밀번호 체크
	public String userPassword(String customer_id) throws Exception;
	
	//회원 정보 불러오기
	public List<memberDetails> userInformation(String customer_id) throws Exception;
	
	//회원 정보 수정
	public int userModify(memberDetails details) throws Exception;
	
	//회원 삭제
	public int userDelete(String customer_id) throws Exception;
	
	//아이디 찾기
	public String findId(String userId, String userEmail) throws Exception;
}
