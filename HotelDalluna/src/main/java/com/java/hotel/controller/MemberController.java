package com.java.hotel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.java.dto.memberDetails;


@Controller
public class MemberController {

	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@GetMapping("login.do")
	public String logincheck(Model model) {
			logger.info("로그인 페이지 이동");
		return"login";
	}
	
	@GetMapping("singupForm.do")
	public String singupForm(@ModelAttribute("memberDetails") memberDetails details,Model model) {
		logger.info("회원가입");
		return "singupForm";
	}
	
	@PostMapping("singup.do")
	public String singUp(@ModelAttribute("memberDetails") memberDetails details ,Model model) {
		logger.info("회원가입 신청");
		
		logger.info(details.getUserEmail());
		logger.info(details.getPassword());
		return "singupForm";
	}
	
	
}
