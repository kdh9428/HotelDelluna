
package com.java.error.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice("com.java.hotel.controller")
public class CommonException {

	private static final Logger logger = LoggerFactory.getLogger(CommonException.class);

	@ExceptionHandler(Exception.class)
	public String Exception(Model model, Exception e) {
		logger.info("exception : " + e.getMessage());
		System.out.println("exception 연습" +e.getMessage());
		logger.info("@ControllerAdvice error" + e.getMessage());
		return "Exception";
	}
}
