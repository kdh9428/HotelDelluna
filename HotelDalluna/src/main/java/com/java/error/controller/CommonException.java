package com.java.error.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class CommonException extends RuntimeException{
	
	private static final Logger logger = LoggerFactory.getLogger(CommonException.class);
	
	@ExceptionHandler(RuntimeException.class)
	public String Exception(Model model, Exception e) {
		logger.info("@ControllerAdvice error" + e.getMessage());
		
		return "Exception";
	}

}
