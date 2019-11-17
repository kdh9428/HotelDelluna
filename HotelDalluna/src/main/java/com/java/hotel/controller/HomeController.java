//
//  package com.java.hotel.controller;
//  
//  import org.apache.ibatis.session.SqlSession; import org.slf4j.Logger; import
//  org.slf4j.LoggerFactory; import
//  org.springframework.beans.factory.annotation.Autowired; import
//  org.springframework.stereotype.Controller; import
//  org.springframework.ui.Model; import
//  org.springframework.web.bind.annotation.RequestMapping;
//  
//  import com.java.dao.InterfaceDao;
//  
//  import service.ReservationService;
//  
// /**
//	 * Handles requests for the application home page.
//	 */
//		  @Controller 
//		  public class HomeController {
//		  
//		  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
//		  
//		  
//		  @Autowired 
//		  private ReservationService reservationService;
//		  
//		  @Autowired 
//		  private SqlSession sqlSession;
//		  
//		  @RequestMapping("home.do") public String list(Model model) {
//		  System.out.println("컨트롤러 확인"); // ArrayList<ContentDto> dtos = dao.listDao();
//		  InterfaceDao dao = sqlSession.getMapper(InterfaceDao.class);
//		  System.out.println("dao확인"+dao.listDao()); // ArrayList<ContentDto> dtos =
//		  dao.listDao(); model.addAttribute("zip1", dao.listDao());
//		  
//		  return "home"; 
//		  }
//		  
//		  
//		  }
//		 