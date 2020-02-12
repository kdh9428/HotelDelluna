package com.java.Validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.java.dto.memberDetails;

public class validation implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return memberDetails.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		memberDetails memberRequest = (memberDetails) target;
		
		if(memberRequest.getPassword().equals(memberRequest.getPassword2()) != true){
			errors.rejectValue("password", "패스워드가 같지 않습니다! 패스워드 확인 요망!");
		}else if(memberRequest.getPassword().equals(memberRequest.getCustomer_id()) == true ){
			errors.rejectValue("password", "아이디와 비밀번호가 같습니다.");
		}
	}
}