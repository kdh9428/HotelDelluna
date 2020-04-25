package com.java.error;

import org.apache.catalina.core.ApplicationContext;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
			"classpath:/WEB-INF/spring/appServlet/dispatcher-servlet.xml",
			"classpath:/WEB-INF/spring/appServlet/security-context.xml",
			"classpath:/WEB-INF/spring/appServlet/transaction-context.xml",
			"classpath:/WEB-INF/spring/root-context.xml",
			"classpath:/springSetting/common-context.xml"
			}
		)
public class AbstractApplicationContextTest {
	
	@Autowired
	protected ApplicationContext context;

}
