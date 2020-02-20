package com.java.service;

import static org.junit.Assert.assertThat;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hamcrest.CoreMatchers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.java.dao.MemberAuthDao;
import com.java.dto.memberDetails;

public class memberDetailsSeviceImpl implements UserDetailsService, memberDetailsSevice{

	private static final Logger logger = LoggerFactory.getLogger(memberDetailsSeviceImpl.class); 
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
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
	@Override
	public int singup(memberDetails details) throws Exception {
		//1차 비밀번호와 2차 비밀번호가 맞는지 확인 후 부호화
		if(details.getPassword().equals(details.getPassword2())) {
			String pass = passwordEncoder.encode(details.getPassword());
			details.setPassword(pass);
			logger.info("비밀번호 생성"+pass);
		}
		
		String date=details.getYear()+"-"+details.getMonth()+"-"+details.getDay();
		SimpleDateFormat datformat = new SimpleDateFormat("yyyy-M-d");
		Date d = datformat.parse(date);
		details.setBirthday(datformat.format(d));
		logger.info("날짜"+details.getBirthday());
		return memberAuthDao.singup(details);
	}
	
	//회원 아이디 체크
	@Override
	public int doubleCheck(String customer_id) throws Exception {
		return memberAuthDao.doubleCheck(customer_id);
	}
	
	//회원 정보 수정 비밀번호 체크
	@Override
	public boolean userPassword(String password) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//assertThat(passwordEncoder.matches(rawPassword, encodedPassword), is(true));
		return passwordEncoder.matches(password, memberAuthDao.userPassword(auth.getName()));
	}
}
