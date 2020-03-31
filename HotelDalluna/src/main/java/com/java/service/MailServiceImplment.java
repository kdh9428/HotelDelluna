package com.java.service;

import java.io.File;
import java.util.Random;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.internet.MimeBodyPart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.java.dao.MemberAuthDao;
import com.java.dto.memberDetails;
import com.java.mail.MailUtils;

@Service
public class MailServiceImplment implements MailService{
	
	@Autowired
	MemberAuthDao memberAuthDao;
	
	@Autowired
	JavaMailSender mailSender;
	
	@Autowired
	PasswordEncoder passwordencoder;
	
	//id찾기
	@Override
	public boolean sendEmailId(String customerName, String userEmail) throws Exception {
		String findId = memberAuthDao.findUserId(customerName, userEmail);
		if(findId==null) {
			return false;
		}
		sendId(findId,userEmail);
		return true;
	}
	
	//비밀번호 찾기
	@Override
	public boolean sendEmailPassword(String customer_id, String userEmail) throws Exception {
		boolean findPassword = memberAuthDao.findUserPassword(customer_id, userEmail);
		String password = randemPassword();
		if(findPassword) {
			memberDetails member = new memberDetails(); //DTO 인스턴스 생성
			member.setCustomer_id(customer_id); //아이디
			member.setPassword(passwordencoder.encode(password)); //비밀번호 주입
			memberAuthDao.userModify(member); //회원정보 수정
			
			sendPassword(userEmail,password);
		}
		return findPassword;
	}
	
	public void sendId(String id,String userEmail) throws Exception {
		BodyPart messageBodyPart = new MimeBodyPart();
		//현재 경로
		File f = new File(".");
		//추가 파일 있는 경로
		DataSource image = new FileDataSource("C:\\Users\\DaHun_Home\\git\\HotelDelluna\\HotelDalluna"+"\\src\\main\\webapp\\resources\\images\\favicon\\hotelDalluna384x384.jpg");
		messageBodyPart.setDataHandler(new DataHandler(image));
		messageBodyPart.setHeader("Content-ID","<image>");
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("HotelDalluna 아이디 찾기");
		sendMail.setText(new StringBuffer().append("<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;")
										   .append("<tr>")
										   .append("<td align=\"center\" style=\"padding: 40px 0 30px 0;\">")
										   .append("<img src=\"cid:image\" width=\"300\" height=\"230\" style=\"display: block;\">")
										   .append("</tr>")
										   .append("</td>")
										   .append("<tr>")
										   .append("<td>")
										   .append("<h1>HotelDalluna 아이디 찾기</h1>")
										   .append("</tr>")
										   .append("</td>")
										   .append("<tr>")
										   .append("<td>")
										   .append("회원님의 아이디는 <span style=\"color:#ff5100\">"+ id +"</span>입니다.")
										   .append("</tr>")
										   .append("</td>")
										   .append("<tr>")
										   .append("<td>")
										   .append("<h2><a href=https://www.dahunkim.xyz target=\"_blank\" title=\"호텔 델루나\">호텔 델루나 바로가기</a><h2>")
										   .append("</tr>")
										   .append("</td>")
										   .append("</table>").toString());
		sendMail.addInLine("image", image);
		sendMail.setForm("dahunkim90@gmail.com", "HotelDalluna");
		sendMail.setTo(userEmail);
		sendMail.send();
	}
	
	public void sendPassword(String userEmail,String password) throws Exception{
		
		BodyPart messageBodyPart = new MimeBodyPart();
		//현재 경로
		File f = new File(".");
		//추가 파일 있는 경로
		DataSource image = new FileDataSource("C:\\Users\\DaHun_Home\\git\\HotelDelluna\\HotelDalluna"+"\\src\\main\\webapp\\resources\\images\\favicon\\hotelDalluna384x384.jpg");
		messageBodyPart.setDataHandler(new DataHandler(image));
		messageBodyPart.setHeader("Content-ID","<image>");
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("HotelDalluna 비밀번호 재설정");
		sendMail.setText(new StringBuffer().append("<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;")
										   .append("<tr>")
										   .append("<td align=\"center\" style=\"padding: 40px 0 30px 0;\">")
										   .append("<img src=\"cid:image\" width=\"300\" height=\"230\" style=\"display: block;\">")
										   .append("</tr>")
										   .append("</td>")
										   .append("<tr>")
										   .append("<td>")
										   .append("<h1>HotelDalluna 아이디 찾기</h1>")
										   .append("</tr>")
										   .append("</td>")
										   .append("<tr>")
										   .append("<td>")
										   .append("회원님의 임시 비밀번호는 <span style=\"color:#ff5100\"> "+ password +" </span> 입니다.<br>")
										   .append("<span style=\"color:rad\">임시 비밀번호를 반드시 변경해 주세요.</span>")
										   .append("</tr>")
										   .append("</td>")
										   .append("<tr>")
										   .append("<td>")
										   .append("<h2><a href=https://www.dahunkim.xyz target=\"_blank\" title=\"호텔 델루나\">호텔 델루나 바로가기</a><h2>")
										   .append("</tr>")
										   .append("</td>")
										   .append("</table>").toString());
		sendMail.addInLine("image", image);
		sendMail.setForm("dahunkim90@gmail.com", "HotelDalluna");
		sendMail.setTo(userEmail);
		sendMail.send();
		
	}
	
	//랜덤 비밀번호 생성
	public String randemPassword() {
		char[] charSet = new char[] {
				'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
                'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
                'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
                'w', 'x', 'y', 'z', '!', '@', '#', '$', '%', '^', '&', '*',
                '(', ')', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
		
		Random random = new Random(System.currentTimeMillis());
		StringBuffer buf = new StringBuffer();
		for(int i = 0; i<8;i++) {
			buf.append(charSet[random.nextInt(charSet.length)]);
		}
		return buf.toString();
	}
}
