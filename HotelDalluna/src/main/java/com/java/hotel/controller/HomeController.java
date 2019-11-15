package com.java.hotel.controller;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dao.InterfaceDao;
import com.java.dao.TestDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/*
	 * TestDAO dao;
	 * 
	 * @Autowired public void setDao(TestDAO dao) { this.dao = dao; }
	 */
	  
	 
	@Autowired
	private SqlSession sqlSession;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * home1(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * Date date = new Date(); DateFormat dateFormat =
	 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	 * 
	 * String formattedDate = dateFormat.format(date);
	 * 
	 * model.addAttribute("serverTime", formattedDate );
	 * 
	 * return "home"; }
	 */

	/*
	 * @RequestMapping("/home.do") public ModelAndView home(Model model) {
	 * System.out.println("컨트롤러 시작"); // List list = dao.listDao();
	 * 
	 * ModelAndView mav = new ModelAndView();// 이동할페이지,화면에 출력할 데이터전송이 가능
	 * mav.setViewName("home");// 이동할 페이지명->list.jsp mav.addObject("home", list);//
	 * request.setAttribute("list",list); return mav; //
	 * DispatcherServlet->viewResolver->/list.jsp }
	 */
	
	@RequestMapping("home.do")
	public String list(Model model) {
		System.out.println("컨트롤러 확인");
//		ArrayList<ContentDto> dtos = dao.listDao();
		InterfaceDao dao = sqlSession.getMapper(InterfaceDao.class);
		System.out.println("dao확인"+dao.listDao());
//		ArrayList<ContentDto> dtos = dao.listDao();
		model.addAttribute("zip1", dao.listDao());
		
		return "home";
	}

}
