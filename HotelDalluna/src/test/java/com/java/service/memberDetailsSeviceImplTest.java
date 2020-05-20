package com.java.service;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.time.LocalDate;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.java.dto.memberDetails;


@RunWith(SpringRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {
	"classpath:/WEB-INF/spring/appServlet/dispatcher-servlet.xml",
	"classpath:/WEB-INF/spring/appServlet/security-context.xml",
	"classpath:/WEB-INF/spring/appServlet/transaction-context.xml",
	"classpath:/WEB-INF/spring/root-context.xml",
	"classpath:/springSetting/common-context.xml"
}
)
public class memberDetailsSeviceImplTest {

	
	@Autowired
	private WebApplicationContext ctx;
	
	MockMvc mockMvc;
	
	@Before
	public void mock() {
		mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void doubleCheck() throws Throwable {
		MvcResult andReturn = mockMvc.perform(get("/doubleCheck.do").param("customer_id", "aaaa"))
				.andDo(print())
				.andExpect(status().isOk())
				.andExpect(content().string("1"))
				.andReturn();
		
		String test =  andReturn.getResponse().getContentAsString();
		System.out.println("확인 : "+test);
		
	}
	
	@Test
	@WithMockUser("2asdf")
	public void userModify() throws Exception {
		
		memberDetails details = new memberDetails();
		
		details.setCustomer_id("2asdf");
		details.setCustomer_name("테스트");
		details.setTel("0222");
		details.setPassword("asdf123!2");
		details.setPassword2("asdf123!2");
		details.setUserEmail("kasdf12333@nasdf.cocc");
//		details.setYear1(2200);
//		details.setMonth1(8);
//		details.setDay1(12);
		
		mockMvc.perform(post("/userModify.do").flashAttr("details", details))
						.andDo(print())
						.andExpect(status().isOk());
		
	}

}
