package com.java.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
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
		
		String date=details.getYear()+"/"+details.getMonth()+"/"+details.getDay();
		Date datformat = new SimpleDateFormat("yyyy/MM/dd").parse(date);
		details.setBirthday(datformat);
		logger.info("날짜"+datformat);
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
		//비밀번호가 맞는지 체크
		//assertThat(passwordEncoder.matches(rawPassword, encodedPassword), is(true));
		return passwordEncoder.matches(password, memberAuthDao.userPassword(auth.getName()));
	}
	
	//ajax 회원정보 수정폼 
	@Override
	public List<memberDetails> userInformation() throws Exception{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return memberAuthDao.userInformation(auth.getName());
	}
	//회원정보 수정
	@Override
	public boolean userModify(memberDetails details) throws Exception {
		String date=details.getYear()+"/"+details.getMonth()+"/"+details.getDay();
		Date datformat = new SimpleDateFormat("yyyy/MM/dd").parse(date);
		details.setBirthday(datformat);
		logger.info("날짜"+datformat);
		
		//1차 비밀번호와 2차 비밀번호가 맞는지 확인 후 부호화
		if(details.getPassword().equals(details.getPassword2())) {
			String pass = passwordEncoder.encode(details.getPassword());
			details.setPassword(pass);
			logger.info("비밀번호 생성");
		}
		int check = memberAuthDao.userModify(details);
		if(check >=1) return true;
		else return false;
	}
	
	@Override
	//회원정보 삭제
	public boolean userDelete() throws Exception{
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	System.out.println("아이디 확인"+auth.getName());
		int deleteCheck = memberAuthDao.userDelete(auth.getName());
		if(deleteCheck >= 1) return true;
		else return false;
	}
}
