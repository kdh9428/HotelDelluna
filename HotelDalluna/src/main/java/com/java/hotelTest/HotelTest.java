package com.java.hotelTest;

import java.util.regex.Pattern;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.java.BoardDao.BoardDao;
import com.java.BoardService.BoardService;
import com.java.dao.MemberAuthDao;
import com.java.dao.ReservationDaoImpl;
import com.java.service.ReservationService;
import com.java.service.memberDetailsSevice;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/dispatcher-servlet.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/security-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/transaction-context.xml",
		"classpath:/springSetting/common-context.xml"
		})
@WebAppConfiguration
public class HotelTest {

	private static final Logger logger = LoggerFactory.getLogger(HotelTest.class);

	@Autowired
	BoardDao boardDao;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	ReservationService ReservationService;
	
	@Autowired
	ReservationDaoImpl ReservationDao;
	
	@Inject
	memberDetailsSevice impl;
	@Inject
	MemberAuthDao memDao;
//	
//	@Test
//	@Ignore
//	public void testGetBoardList() throws Exception {

//		Pagination pagination = new Pagination();
//		SearchPagination pagination = new SearchPagination();
//		
//		pagination.setListSize(10);
//		pagination.setRangeSize(10);
//		
//		pagination.setSearchType("notice_title");
//		pagination.setKeyword("7");
//		
//		int listCnt = boardService.boardListCnt(pagination);
//		System.out.println("listCnt확인"+listCnt);
//		pagination.pageInfo(1, 1, listCnt);
//		List<BoardVO> boardList = boardDao.boardList(pagination);
//
//		logger.info("startList"+pagination.getListSize());
//		logger.info("\n Board List \n ");
//
//		if(boardList.size() > 0) {
//
//			for(BoardVO list : boardList) {
//
//				logger.info(list.getNotice_title());
//				logger.info(list.getNotice_contents());
//				
//			}
//
//		} else {
//
//			logger.info("데이터가 없습니다.");
//
//		}
//
//	}

//	@Test  @Ignore 
//	public void testInsertBoard() throws Exception {
//		
//
//
//		BoardVO boardVO = new BoardVO();
//
//	//	boardVO.setTitle("첫번째 게시물 입니다.");
//
//	//	boardVO.setContent("첫번째 게시물입니다.");
//
//		
//
//
//		for (int i = 1; i < 100; i++) {
//			boardVO.setNotice_title(i + " 번째 게시물 입니다.");
//
//			boardVO.setNotice_contents(i + " 번째 게시물 입니다.");
//			boardVO.setCustomer_id("aaa");
//			boardVO.setRef(0);
//			/* boardDao.boardUpdate(boardVO); */
//			boardService.boardInsert(boardVO);
//
//			logger.info("\n Insert Board Result ");

//		if(result == 1) {
//
//			logger.info("\n 게시물 등록 성공 ");
//
//		} else {
//
//			logger.info("\n 게시물 등록 실패");
//
//		}
//		}
//	}

	
	
	//예약 완료 테스트
//	@Test
//	@Ignore
//	public void ReservationTest() {
//		
//		ReservationDTO Reservation =  new ReservationDTO();
		
//		List<ReservationDTO> Reservation1 = ReservationDao.ReservationConfirm("aaa");
//		
//		if(Reservation1.size() > 0 ) {
//			
//			for(ReservationDTO size : Reservation1) {
//				logger.info(size.getReservation_number());
//				logger.info(size.getReservation_date_in()+ " ~ " + size.getReservation_date_out());
//				logger.info(size.getCustomer_id());
//			}
//			
//		}
//		int listCnt = ReservationDao.ReservationCount("aaa");
//		System.out.println(listCnt);
//		logger.info(ReservationDao.ReservationCount("aaa"));
		
//		Pagination page = new Pagination();
//		page.pageInfo(1, 1, listCnt);
//		page.setCustomer_id("aaa");
//		page.setListSize(1);
//		List<ReservationDTO> reserva =  ReservationService.ReservationConfirm(page);
//		System.out.println("확인"+reserva.get(0).getCustomer_id());
//		for(ReservationDTO pages : reserva) {
//			System.out.println(pages.getConfirmation_payment());
//			System.out.println(pages.getAdult());
//			System.out.println(pages.getChild());
//			logger.info(pages.getCustomer_id());
//			System.out.println(pages.getReservation_date_in());
//			System.out.println(pages.getReservation_date_out());
//			

//		}
//	}
//	
//	class A{
//		public void a() {
//			System.out.println("오버라이딩");
//		}
//	}
//	
//	class B extends A{
//		
//		public B() {
//			// TODO Auto-generated constructor stub
//		}
//		
//		public B(int a) {
//			// TODO Auto-generated constructor stub
//		}
//		
//		public B(int a, int b) {
//			// TODO Auto-generated constructor stub
//		}
//		
//		@Override
//		public void a() {
//			// TODO Auto-generated method stub
//			super.a();
//		}
//		
//		public void a(int a) {
//			
//		}
//	}	
	@Test 
	public void test1(){
			int ddd = 1;
			
			try {
				ddd = memDao.doubleCheck("asdf");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("확인 테스트 "+ddd);
			System.out.println(ddd);
			
			try {
				System.out.println(impl.doubleCheck("dkdkdk"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Pattern pattern;
			
			System.out.println("정규식 테스트 =======================");
			String ttt;
			String eques = ".*(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]).*";
			ttt= "ekgns1@2";
			
			if(ttt.matches(eques)) {
				System.out.println("정규표현식 맞는 문자열");
			}else {
				System.out.println("아닌 문자열 확인");
			}
			
		}
}
