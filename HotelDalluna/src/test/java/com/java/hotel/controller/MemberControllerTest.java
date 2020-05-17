package com.java.hotel.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.java.dto.memberDetails;

@RunWith(SpringRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {
		"classpath:/WEB-INF/spring/appServlet/dispatcher-servlet.xml",
		"classpath:/WEB-INF/spring/appServlet/security-context.xml",
		"classpath:/WEB-INF/spring/appServlet/transaction-context.xml",
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
})
public class MemberControllerTest {

	@Autowired
	WebApplicationContext web;
	
	private MockMvc mockMvc;
	
	@Before
	public void set() {
		mockMvc = MockMvcBuilders.webAppContextSetup(web).build();
	}
	
	@Test
	@WithMockUser("2asdf")
	public void userModify() throws Exception {
		
		memberDetails details =  new memberDetails();
		
		details.setCustomer_id("2asdf");
		details.setCustomer_name("sadf");
		details.setTel("01032111");
		details.setUserEmail("asdf@asdf.com");
		details.setPassword("ekgns!12");
		details.setPassword2("ekgns!12");
//		details.setYear1(2020);
//		details.setMonth1(11);
//		details.setDay1(21);
		
		mockMvc.perform(post("/userModify.do").flashAttr("memberDetails", details))
				.andDo(print())
				.andExpect(status().isOk())
				.andExpect(model().attributeExists("updateSuccess"));
	}

}
