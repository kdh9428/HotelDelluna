package com.java.hotel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	private RequestCache requestCache = new HttpSessionRequestCache();
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
//		System.out.println("쿠키 체크 확인한다."+ request.getParameter("cookie"));
		
		if(request.getParameter("cookie")!=null) {
			System.out.println("잘된다"+request.getParameter("customer_id"));
			Cookie idCookie = new Cookie("id", request.getParameter("customer_id"));
			idCookie.setMaxAge(60*60*24*7);
			idCookie.setPath(request.getContextPath()+"/login.do");
			response.addCookie(idCookie);
		}else {
			Cookie deleteIdCookie = new Cookie("id", null);
			deleteIdCookie.setMaxAge(0);
			response.addCookie(deleteIdCookie);
			System.out.println("off다"+request.getContextPath()+"/login.do");
		}
		resultRedirectStrateg(request, response, authentication);
	}
	
	protected void resultRedirectStrateg(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		HttpSession session = request.getSession();

		if(savedRequest != null) {
			//로그인 시에만 접속 가능 페이지 클릭시 되돌아갈 페이지 설정
			String targetUrl = savedRequest.getRedirectUrl();
			redirectStrategy.sendRedirect(request, response, targetUrl);
			
		}else if(session != null) {
			//세션에 저장되어 있는 이전 페이지 주소 저장
			String redirectUrl = (String) session.getAttribute("prevPage");
			if(redirectUrl != null) {
				//저장했던 세션 삭제
				session.removeAttribute("prevPage");
				redirectStrategy.sendRedirect(request, response, redirectUrl);
			}
		}else {
			//다이렉트로 로그인 페이지 접근 시 이동 페이지
			redirectStrategy.sendRedirect(request, response, "/index.do");
			
		}
	}
	
}
