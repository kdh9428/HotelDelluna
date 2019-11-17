package com.java.hotel.controller;


import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.service.ReservationService;


@Controller
public class ReservationController  {
	
	@Inject
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
	 public String home() {
		 
		 System.out.println("home 실행!");
		 
		 return "home";
	 }

}
