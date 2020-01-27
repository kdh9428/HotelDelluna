package com.java.service;

import com.java.dto.memberDetails;

public interface memberDetailsSevice {

	public int singup(memberDetails details) throws Exception;
	
	public int doubleCheck(String customer_id) throws Exception;
}
