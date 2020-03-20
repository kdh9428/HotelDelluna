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

import com.java.mail.MailUtils;

@Service
public class MailServiceImplment implements MailService{
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public void sendEmail(String content) throws Exception {
		BodyPart messageBodyPart = new MimeBodyPart();
		//현재 경로
		File f = new File(".");
		//추가 파일 있는 경로
		DataSource image = new FileDataSource(f+"\\src\\main\\webapp\\resources\\images\\favicon\\hotelDalluna384x384.jpg");
		messageBodyPart.setDataHandler(new DataHandler(image));
		messageBodyPart.setHeader("Content-ID","<image>");
		System.out.println("확인!!!!!!!!!!");
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("이메일 확인 인증 test 입니다.");
		sendMail.setText(new StringBuffer().append("<img src=\"cid:image\">")
										   .append("<h1>HotelDalluna 아이디 비밀번호 찾기</h1>")
										   .append("test중입니다.").toString());
		sendMail.addInLine("image", image);
		sendMail.setForm("dahunkim90@gmail.com", "HotelDalluna");
		sendMail.setTo("kim23222@naver.com");
		sendMail.send();
	}
	
}
