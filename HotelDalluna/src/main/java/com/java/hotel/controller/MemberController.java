package com.java.hotel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.java.dto.memberDetails;
import com.java.service.memberDetailsSevice;


@RestController
public class MemberController {

	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	memberDetailsSevice memberDetail;
	
	@GetMapping("login.do")
	public String logincheck(Model model) {
			logger.info("로그인 페이지 이동");
		return"login";
	}
	
	@GetMapping("singupForm.do")
	public String singupForm(@ModelAttribute("memberDetails") memberDetails details,Model model) throws Exception {
		logger.info("회원가입");
		return "singupForm";
	}
	
	@PostMapping("singup.do")
	public String singUp(@ModelAttribute("memberDetails") memberDetails details ,Model model) throws Exception{
		int check = memberDetail.singup(details);
		logger.info("회원가입 완료"+check);
		
		if(check==1) {
			model.addAttribute("loginCheck", check);
			model.addAttribute("customer_name",details.getCustomer_name());
			return "singupComplete";
		}else {
			model.addAttribute("loginCheck", check);
		}
		
		return "singupForm";
	}
	
	@PostMapping("doubleCheck.do")
	public int doubleCheck(@RequestParam("custmoer_id") String customer_id) throws Exception{
	
		
		return 1;
	}
	
	
}
