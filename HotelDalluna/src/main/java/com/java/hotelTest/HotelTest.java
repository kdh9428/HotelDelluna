package com.java.hotelTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;

import org.hamcrest.CoreMatchers;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
	
	@Inject
	PasswordEncoder passwordEncoder;
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
		
		System.out.println(passwordEncoder.encode("123"));
		
			String date="1990/11/21";
			try {
				Date datformat = new SimpleDateFormat("yyyy/MM/dd").parse(date);
				
				System.out.println("날짜확인=============="+datformat);
				
				SimpleDateFormat aa = new SimpleDateFormat("yyyy");
				
				System.out.println(aa.format(datformat));
				System.out.println(new SimpleDateFormat("MM").format(datformat));
				System.out.println(new SimpleDateFormat("dd").format(datformat));
						
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("정규식 테스트 =======================");
			String ttt;
			String eques = "^([_A-Za-z0-9-_]+[._A-Za-z0-9-_]*)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([\\w-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
			ttt= "ekgns1@2123.com";
			
			if(ttt.matches(eques)) {
				System.out.println("정규표현식 맞는 문자열");
			}else {
				System.out.println("아닌 문자열 확인");
			}
			String sss = "^(01[016789])(\\d{3,4})(\\d{4})$";
			String dss= "010292928";
			
			if(dss.matches(sss)) {
				System.out.println("정규표현식 맞는 문자열");
			}else {
				System.out.println("아닌 문자열 확인");
			}
			
			//assertThat매소드 테스트
			int result =9;
			System.out.println();
		    Assert.assertThat(result, CoreMatchers.is(10));
//			boolean ss = Assert.assertThat("assa", CoreMatchers.is("assa"));
			System.out.println( );
			
			//문자열 테스트 해보기
			String test11 ="<script>window.onload = function(){alert('시큐어코딩 테스트')}</script>시큐어코딩 테스트1,시큐어코딩 테스트2,시큐어코딩 테스트3,시큐어코딩 테스트444";
			
			int title = test11.length();
			System.out.println("title"+title);
			
			if(title >= 100) {
				String ss = test11.substring(0,100);
				System.out.println(ss);
			}else {
				System.out.println("그냥 저장하기");
			}
			
		}
}
