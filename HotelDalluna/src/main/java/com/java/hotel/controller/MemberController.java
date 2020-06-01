package com.java.hotel.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.Validation.validation;
import com.java.dto.memberDetails;
import com.java.service.MailService;
import com.java.service.memberDetailsSevice;

@Controller
public class MemberController {

	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MailService mailService;
	
	@Autowired
	memberDetailsSevice memberDetail;
	
	@GetMapping("login.do")
	public String logincheck(@CookieValue(value ="id", required = false) String id , 
							@RequestParam(required = false) String deleteCheck,
							@RequestHeader("referer") String ref ,Model model , HttpServletRequest request) {
			logger.info("로그인 페이지 이동");
			//회원 탈퇴 시 탈퇴 완료 확인 ,userDelete()에서 redirect로 전달 받기 때문에 파라미터로 설정, 더 좋은 방법 있나 생각
			
		/* HttpServletRequest를 이용한 쿠키 설정 */
//			String getCookieId = "";
//			Cookie [] getCookie = request.getCookies();
//			if(getCookie != null) {
//				for(Cookie Cook : getCookie) {
//					if("id".equals(Cook.getName())) {
//						getCookieId = Cook.getValue();
//					}
//				}
//			}
			
			System.out.println("ref"+ref);
			//이전 페이지 저장
			String referer = request.getHeader("referer");
			//로그인 페이지를 직접 클릭하지 않았을 경우 세션에 이전 페이지 주소 저장
			request.getSession().setAttribute("prevPage", referer);
			
			model.addAttribute("deleteCheck", deleteCheck);
			model.addAttribute("getCookieId",id);
		return"login";
	}
	
	@GetMapping("singupForm.do")
	public String singupForm(@ModelAttribute("memberDetails") memberDetails details,Model model) throws Exception {
		logger.info("회원가입");
		return "singupForm";
	}
	
	@PostMapping("singup.do")
	public String singUp(@ModelAttribute("memberDetails") @Valid memberDetails details, BindingResult bindingResult, Errors errors, Model model) throws Exception{
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
	public String userInformation(String password, memberDetails details ,Model model) throws Exception {
		logger.info("회원정보 변경");
			if(userPassword(password)){
				
				List<memberDetails> userInfo= memberDetail.userInformation();
				
				details.setCustomer_id(userInfo.get(0).getCustomer_id());
				details.setCustomer_name(userInfo.get(0).getCustomer_name());
				details.setTel(userInfo.get(0).getTel());
				details.setUserEmail(userInfo.get(0).getUserEmail());
				details.setYear(userInfo.get(0).getBirthday().getYear());
				details.setMonth(userInfo.get(0).getBirthday().getMonthValue());
				details.setDay(userInfo.get(0).getBirthday().getDayOfMonth());
				model.addAttribute("details", details);
				return "userModifyForm";
			}else {
				model.addAttribute("updateSuccess", false);
				return "userModifyPasswordCheck";
			}
	}

	@PostMapping("userModify.do")
	public String userModify(@ModelAttribute @Valid memberDetails details, Model model) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		logger.info("회원정보 수정 완료 id : "+auth.getName());
		
		//Sesstion 아이디와 클라이언트 아이디 확인 후 맞으면 변경
		if(details.getCustomer_id().equals(auth.getName())) {
			Boolean updateSuccess = memberDetail.userModify(details);
			model.addAttribute("updateSuccess",updateSuccess);
		}else {
			model.addAttribute("updateSuccess", false);
		}
		return "userModifyPasswordCheck";
	}
	
	@PostMapping("userDelete.do")
	public String userDelete(@RequestParam String password ,Model model,HttpSession session) throws Exception{
		logger.info("삭제 확인");
//		if(memberDetail.userPassword(password))
		boolean deleteCheck = memberDetail.userDelete();
		session.invalidate();
		SecurityContextHolder.clearContext();
		model.addAttribute("deleteCheck", deleteCheck);
		return "redirect:login.do";
	}
	
	//아이디 찾기
	@ResponseBody
	@PostMapping("findUser/id")
	public boolean findUserId(@RequestBody Map<String, String> map, Model model) throws Exception {
		logger.info("아이디 확인 이메일 전송 controller");
		String customerName = map.get("customerName");
		String userEmail = map.get("userEmail");
		boolean id = mailService.sendEmailId(customerName, userEmail);
		return id;
	}
	
	//비밀번호 재설정
	@ResponseBody
	@PostMapping("findUser/password")
	public boolean findUserPassword(@RequestBody Map<String, String> map, Model model) throws Exception {
		logger.info("비밀번호 재설정 이메일 전송 controller");
		String customer_id = map.get("customer_id");
		String userEmail = map.get("userEmail");
		boolean password = mailService.sendEmailPassword(customer_id, userEmail);
		return password;
	}
}
