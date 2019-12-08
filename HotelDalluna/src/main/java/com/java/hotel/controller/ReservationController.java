package com.java.hotel.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.ReservationDTO;
import com.java.service.ReservationService;


@Controller
public class ReservationController  {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	//암호화 test
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	@Autowired
	private ReservationService reservation;
	
	//예약 페이지
	@RequestMapping("Reservation.do")
	public String reservation() throws Exception{
		logger.info("reservation 페이지 실행"); 
		return "Reservation";
	}
	
	//예약 체크 확인
	@RequestMapping(value="ReservationCheck.do",method = RequestMethod.POST)
	public String reservationCheck(@ModelAttribute("dto") ReservationDTO reservationDto, Model model) throws Exception{
		logger.info("reservationCheck 컨트롤러 확인");
		String page;
		 int check = reservation.reservationCheck(reservationDto);
		 
		 //check가 1이면 예약 되어있음 
		 if(check==1) {
			 model.addAttribute("page",check);
			 page="ReservationConfirm";
		 }else{
			 model.addAttribute("page",check);
			 page="Reservation";
		 }
		 return page;
	}
	
	//예약 완료 확인
	@RequestMapping("ReservationConfirm.do")
	public String reservationConfirm(ReservationDTO reservationDto, Model model) {
		 
		reservation.reservationConfirm();
		 List<ReservationDTO> reservationConfirm = reservation.reservationConfirm(); 
		/*
		 * for(ReservationDTO vo:dto1) { String listresult = vo.getReservation_number();
		 * System.out.println("데이터 확인중.."+listresult+", "+ vo.getPriceproduct()); }
		 */
		 
		 //reservationConfirm에 값이 없는지 확인, 없으면 1을 view로 보내서 예약하지 않았다고 체크 
		 if(reservationConfirm.isEmpty()) {
			 model.addAttribute("notReservation",1);
		 }else {
		 model.addAttribute("dto",reservationConfirm.get(0));
		 }
		return "ReservationConfirm";
	}
	
	@RequestMapping("ReservationCancell.do")
	public String reservationConcell(@RequestParam("reservation_number") String reservation_number) {
		reservation.reservationCancell(reservation_number);
		
		return"Reservation";
	}
	
	@RequestMapping("index.do")
	public String index() throws Exception  {
		/* ReservationService reservationService = new ReservationServiceImpl(); */
//		String asd = "123";
//		String sss = passwordEncoder.encode(asd);
		 
		return "index";
	}
}
