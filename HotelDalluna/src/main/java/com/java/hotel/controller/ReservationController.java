package com.java.hotel.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	HttpServletRequest param;
	
	@Autowired
	private ReservationService reservation;
	
	@RequestMapping("Reservation.do")
	public String reservation(Model model) throws Exception{
		System.out.println(reservation.reservation());
		System.out.println("컨트롤러 시작");
		model.addAttribute("reservation", reservation.reservation());
		
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
		 reservation.reservationClick(reservationDto);
		 
		 return "home";
	 }

}
