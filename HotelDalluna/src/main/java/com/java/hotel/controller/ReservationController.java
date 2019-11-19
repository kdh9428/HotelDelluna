package com.java.hotel.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.dto.ReservationDTO;
import com.java.service.ReservationService;


@Controller
public class ReservationController  {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@Autowired
	private ReservationService reservation;
	
	@RequestMapping("Reservation.do")
	public String reservation() throws Exception{
		/* logger.info("reservation 페이지 실행"); */
		System.out.println("reservation.do 컨트롤러 실행");
		return "Reservation";
	}
	
	@RequestMapping(value="ReservationCheck.do",method = RequestMethod.POST)
	public String reservationCheck(ReservationDTO reservationDto, Model model) throws Exception{
		System.out.println("reservationCheck 컨트롤러 시작");
		model.addAttribute("reservation", reservation.reservationCheck(reservationDto));
		return "Reservation";
	}
	
	@RequestMapping("index.do")
	public String index() throws Exception  {
		/* ReservationService reservationService = new ReservationServiceImpl(); */
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
