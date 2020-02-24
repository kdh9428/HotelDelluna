package com.java.hotel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.Validation.validation;
import com.java.dto.memberDetails;
import com.java.service.memberDetailsSevice;


@Controller
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
	public String singUp(@ModelAttribute("memberDetails") @Valid memberDetails details,BindingResult bindingResult,Errors errors, Model model) throws Exception{
		new validation().validate(details, bindingResult);
		//회원 아이디 중복 확인
		int idCheck = memberDetail.doubleCheck(details.getCustomer_id());
		
		if( bindingResult.hasErrors() || idCheck>=1) {
			errors.rejectValue("customer_id", "중복된 아이디가 있습니다.");
			List<ObjectError> list = bindingResult.getAllErrors();
			for( ObjectError error : list ) {
				System.out.println(error);
			}
			return "singupForm";
			}
		//회원가입 완료 체크
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
	
	//ajax 아이디 확인
	@GetMapping("doubleCheck.do")
	@ResponseBody
	public int doubleCheck(@RequestParam(defaultValue = "1" ) String customer_id) throws Exception{
		logger.info("아이디 확인 "+customer_id);
		return memberDetail.doubleCheck(customer_id);
	}
	
	//회원 정보 수정 ajax 비밀번호 확인
	@PostMapping("userPassword.do")
	@ResponseBody
	public boolean userPassword(@RequestParam String password) throws Exception{
		return memberDetail.userPassword(password);
	}
	
	//회원정보 폼
	@PostMapping("userModifyForm.do")
	public String userInformation(@RequestParam String password, @ModelAttribute memberDetails details,Model model) throws Exception {
		logger.info("회원정보 변경");
		System.out.println("password"+password);
			if(userPassword(password)){
				List<memberDetails> infomation = memberDetail.userInformation();
				details.setCustomer_id(infomation.get(0).getCustomer_id());
				details.setCustomer_name(infomation.get(0).getCustomer_name());
				details.setTel(infomation.get(0).getTel());
				details.setUserEmail(infomation.get(0).getUserEmail());
				
				Date birthday = infomation.get(0).getBirthday();
				details.setYear(new SimpleDateFormat("yyyy").format(birthday));
				details.setMonth(new SimpleDateFormat("MM").format(birthday));
				details.setDay(new SimpleDateFormat("d").format(birthday));
				model.addAttribute("details", details);
				return "userModifyForm";
			}else {
				model.addAttribute("updateSuccess", false);
				return "userModifyPasswordCheck";
			}
	}

	@PostMapping("userModify.do")
	public String userModify(@ModelAttribute @Valid memberDetails details, Model model) throws Exception {
		logger.info("회원정보 수정 완료");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		//Sesstion 아이디와 클라이언트 아이디 확인 후 맞으면 변경
		if(details.getCustomer_id().equals(auth.getName())) {
			Boolean updateSuccess = memberDetail.userModify(details);
			model.addAttribute("updateSuccess",updateSuccess);
		}else {
			model.addAttribute("updateSuccess", false);
		}
		return "userModifyPasswordCheck";
	}
}
