package com.java.dao;

import com.java.dto.memberDetails;

public interface MemberAuthDao {

	public memberDetails getUserById(String customer_id);
	
	//회원가입
	public int singup(memberDetails details);
	
	//ajax id check
	public int doubleCheck(String customer_id) throws Exception;
	
}
