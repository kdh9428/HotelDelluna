package com.java.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.java.dao.MemberAuthDao;
import com.java.dto.memberDetails;

public class memberDetailsSeviceImpl implements UserDetailsService, memberDetailsSevice{

	private static final Logger logger = LoggerFactory.getLogger(memberDetailsSeviceImpl.class); 
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
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
	
	//회원가입
	public String singup(memberDetails details) {
		
		//1차 비밀번호와 2차 비밀번호가 맞는지 확인 후 부호화
		if(details.getPassword().equals(details.getPassword2())) {
			String pass = passwordEncoder.encode(details.getPassword());
			logger.info("비밀번호 생성"+pass);
		}
		String date=details.getYear()+details.getMonth()+details.getDay();
		logger.info(date);
		return"";
	}
}