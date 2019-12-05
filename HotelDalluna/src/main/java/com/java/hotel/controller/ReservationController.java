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
		System.out.println("reservationCheck 컨트롤러 시작");
		String page;
		 int check = reservation.reservationCheck(reservationDto);
		 
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
		 List<ReservationDTO> dto1 = reservation.reservationConfirm(); 
		/*
		 * for(ReservationDTO vo:dto1) { String listresult = vo.getReservation_number();
		 * System.out.println("데이터 확인중.."+listresult+", "+ vo.getPriceproduct()); }
		 */
		 if(dto1.isEmpty()) {
			 System.out.println("예약된 값 확인");
			 model.addAttribute("notReservation",1);
		 }else {
		 model.addAttribute("dto",dto1.get(0));
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
		String asd = "123";
		String sss = passwordEncoder.encode(asd);
		System.out.println("index 시작");
		 
		return "index";
	}
	
	@RequestMapping("home.do")
	public String home() throws Exception  {
		/* ReservationService reservationService = new ReservationServiceImpl(); */
		System.out.println("index 시작");
		
		return "home";
	}
	
	@RequestMapping(value="home1.do", method = RequestMethod.POST)
	 public String home1(@ModelAttribute("click") ReservationDTO reservationDto, Model model ) {
		/* System.out.println("getparameter : "+customer); */
		 System.out.println("home 실행!"+reservationDto);
		 reservation.reservationCheck(reservationDto);
		 
		 return "home";
	 }

}
