package com.java.service;

import java.util.List;

import com.java.dto.memberDetails;

public interface memberDetailsSevice {

	public int singup(memberDetails details) throws Exception;
	
	public int doubleCheck(String customer_id) throws Exception;
	
	public boolean userPassword(String password)throws Exception;
	
	public List<memberDetails> userInformation() throws Exception;
}
