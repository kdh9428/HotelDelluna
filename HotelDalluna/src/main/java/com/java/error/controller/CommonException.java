
package com.java.error.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
//("com.java.hotel.controller")
public class CommonException {

	private static final Logger logger = LoggerFactory.getLogger(CommonException.class);

	@ExceptionHandler(Exception.class)
	public String Exception(Model model, Exception e) {
		logger.info("exception : " + e.getMessage());
		logger.info("===========================");
		e.printStackTrace();
		return "Exception";  
	}
	
	@ExceptionHandler(HttpRequestMethodNotSupportedException.class)
	public String defaultHandler405(Exception e) {
		logger.info("405 에러 : " + e.getMessage());
		
		e.printStackTrace();
		return "Exception";
	}
}
