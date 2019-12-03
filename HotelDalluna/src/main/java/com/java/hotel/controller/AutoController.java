package com.java.hotel.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

public class AutoController {
	
	
	@RequestMapping(value="{pageName}")
	public String getSinglePage(@PathVariable("pageName") String pageName) {
		return pageName;
	}

}
