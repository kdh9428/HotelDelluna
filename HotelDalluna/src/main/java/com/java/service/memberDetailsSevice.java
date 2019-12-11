package com.java.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.java.dao.MemberAuthDao;
import com.java.dto.memberDetails;

public class memberDetailsSevice implements UserDetailsService{

	private static final Logger logger = LoggerFactory.getLogger(memberDetailsSevice.class); 
	
	@Autowired
	private MemberAuthDao memberAuthDao;
	
	@Override
	public UserDetails loadUserByUsername(String customer_id) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		
		memberDetails user = memberAuthDao.getUserById(customer_id);
		logger.info("로그인 아이디 체크" + user);
		if(user==null) {
			throw new UsernameNotFoundException(customer_id);
		}
		return user;
	}
}
