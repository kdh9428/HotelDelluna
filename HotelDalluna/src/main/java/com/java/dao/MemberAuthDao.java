package com.java.dao;

import com.java.dto.memberDetails;

public interface MemberAuthDao {

	public memberDetails getUserById(String customer_id);
	
	public int singup(memberDetails details);
	
}
