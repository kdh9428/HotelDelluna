package com.java.hotel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		System.out.println("쿠키 체크 확인한다."+ request.getParameter("off"));
		if(request.getParameter("cookie").equals("on")) {
			System.out.println("잘된다");
		}else {
			System.out.println("off다");
		}
		
		
		 response.sendRedirect(request.getContextPath() + "/index.do");
		
	}
	
}
