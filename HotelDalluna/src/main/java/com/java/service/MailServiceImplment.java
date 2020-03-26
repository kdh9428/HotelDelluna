package com.java.service;

import java.io.File;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.internet.MimeBodyPart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.java.dao.MemberAuthDao;
import com.java.mail.MailUtils;

@Service
public class MailServiceImplment implements MailService{
	
	@Autowired
	MemberAuthDao memberAuthDao;
	
	@Autowired
	JavaMailSender mailSender;
	
	//id찾기
	@Override
	public boolean sendEmailId(String customerName, String userEmail) throws Exception {
		String findId = memberAuthDao.findUserId(customerName, userEmail);
			System.out.println("비밀번호 확인"+ findId);
		if(findId==null) {
			return false;
		}
//		sendId(findId);
		return true;
	}
	
	//비밀번호 찾기
	@Override
	public boolean sendEmailPassword(String customer_id, String userEmail) throws Exception {
		boolean findPassword = memberAuthDao.findUserPassword(customer_id, userEmail);
		if(findPassword) {
			sendPassword();
		}
		return findPassword;
	}
	
	public void sendId(String id) throws Exception {
		BodyPart messageBodyPart = new MimeBodyPart();
		//현재 경로
		File f = new File(".");
		//추가 파일 있는 경로
		DataSource image = new FileDataSource(f+"\\src\\main\\webapp\\resources\\images\\favicon\\hotelDalluna384x384.jpg");
		messageBodyPart.setDataHandler(new DataHandler(image));
		messageBodyPart.setHeader("Content-ID","<image>");
		System.out.println("확인!!!!!!!!!!");
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("HotelDalluna 아이디 찾기");
		sendMail.setText(new StringBuffer().append("<img src=\"cid:image\">")
										   .append("<h1>HotelDalluna 아이디 찾기</h1>")
										   .append("회원님의 아이디는 "+id+"입니다.")
										   .append("<a href=www.dahunkim.xyz>").toString());
		sendMail.addInLine("image", image);
		sendMail.setForm("dahunkim90@gmail.com", "HotelDalluna");
		sendMail.setTo("kim23222@naver.com");
		sendMail.send();
	}
	
	public void sendPassword() {
		System.out.println("확인");
	}
}
