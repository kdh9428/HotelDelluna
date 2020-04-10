package com.java.hotel.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.ReservationDTO;
import com.java.service.ReservationService;


@Controller
public class ReservationController  {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

	@Autowired
	private ReservationService reservationService;
	
	//예약 페이지
	@GetMapping("Reservation.do")
	public String Reservation() throws Exception{
		logger.info("Reservation 페이지 실행"); 
		return "Reservation";
	}
	
	//예약 체크 확인 ajax
	@GetMapping("Reservation/{checkIn}/{checkOut}/{roomType}")
	@ResponseBody
	public boolean ReservationCheck(@PathVariable("checkIn") final String checkIn, 
									@PathVariable("checkOut") final String checkOut,
									@PathVariable("roomType") final int roomType) throws Exception{
		logger.info("ReservationCheck Ajax"+checkIn+checkOut+" : "+ roomType);
		ReservationDTO reservationDto = new ReservationDTO();
		reservationDto.setReservation_date_in(checkIn);
		reservationDto.setReservation_date_out(checkOut);
		reservationDto.setRoom_type(roomType);
		return reservationService.reservationCheckAjax(reservationDto);
	}
	
	//예약 체크 확인 후 없으면 예약 까지
	@PostMapping("ReservationCheck.do")
	public String ReservationCheck(@ModelAttribute("dto") ReservationDTO reservationDto, Model model) throws Exception{
		logger.info("ReservationCheck 컨트롤러 확인");
		 int check = reservationService.ReservationCheck(reservationDto);
		 
		 //check가 1이면 예약 되어있음 
		 if(check==1) {
			 model.addAttribute("page",check);
			 return "redirect:ReservationConfirm.do";
		 }else{
			 model.addAttribute("page",check);
			 return "Reservation";
		 }
	}
	
	//예약 완료 확인
	@GetMapping("ReservationConfirm.do")
	public String reservationConfirm(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range, Model model) {
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
