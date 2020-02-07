package com.java.hotel.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.ReservationDTO;
import com.java.service.ReservationService;


@Controller
public class ReservationController  {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	
	//암호화 test
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private ReservationService reservationService;
	
	//예약 페이지
	@GetMapping("Reservation.do")
	public String Reservation() throws Exception{
		logger.info("Reservation 페이지 실행"); 
		return "Reservation";
	}
	
	//예약 체크 확인 ajax
	@PostMapping("Reservation/check.do")
	@ResponseBody
	public boolean ReservationCheck(@RequestBody ReservationDTO reservationDto) throws Exception{
		logger.info("ReservationCheck 컨트롤러 확인");
		System.out.println(reservationDto.getReservation_date_in()+"확인합니다"+ reservationDto.getReservation_date_out());
		boolean ddd = reservationService.reservationCheckAjax(reservationDto);
		System.out.println(":ㅇㅇㅇㅇ"+ddd);
		return ddd;
	}
	
	//예약 체크 확인 후 없으면 예약 까지
	@PostMapping("ReservationCheck.do")
	public String ReservationCheck(@ModelAttribute("dto") ReservationDTO reservationDto, Model model) throws Exception{
		logger.info("ReservationCheck 컨트롤러 확인");
		String url;
		 int check = reservationService.ReservationCheck(reservationDto);
		 
		 //check가 1이면 예약 되어있음 
		 if(check==1) {
			 model.addAttribute("page",check);
			 url="redirect:ReservationConfirm.do";
		 }else{
			 model.addAttribute("page",check);
			 url="Reservation";
		 }
		 return url;
	}
	
	//예약 완료 확인
	@GetMapping("ReservationConfirm.do")
	public String reservationConfirm(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range, Model model) {
//		//로그인 id Security에서 받아오기
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		
//		//페이징 처리
//		Pagination pages = new Pagination();
//		
//		int count = ReservationService.ReservationCount(auth.getName());
//		logger.info("예약 완료 컨트롤러");
//		pages.setListSize(1);
//		pages.setRangeSize(10);
//		
//		총 페이지 가져오기
//		pages.pageInfo(page, range, count);
//		
//		한 페이지에 보여질 리스트 수
//		아이디 
//		pages.setCustomer_id(auth.getName());
		 List<ReservationDTO> reservationConfirm = reservationService.ReservationConfirm(page, range);
		 
		 //ReservationConfirm에 값이 없는지 확인, 없으면 1을 view로 보내서 예약하지 않았다고 체크 
		 if(reservationConfirm.isEmpty()) {
			 model.addAttribute("notReservation",1);
		 }else {
			 model.addAttribute("dto",reservationConfirm.get(0));
			 model.addAttribute("pagination", reservationService.pagination(page, range));
		 }
		return "ReservationConfirm";
	}
	
	//예약 취소
	@GetMapping("ReservationCancell.do")
	public String ReservationConcell(@RequestParam("Reservation_number") String Reservation_number) throws Exception{
		reservationService.ReservationCancell(Reservation_number);
		return"redirect:ReservationConfirm.do";
	}
	
}
