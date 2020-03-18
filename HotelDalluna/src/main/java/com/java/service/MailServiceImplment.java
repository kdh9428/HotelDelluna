package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MailServiceImplment implements MailService{
	
	@Autowired JavaMailSender mailsender; 
	
	@Override
	public void sendEmail(String contnet) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
