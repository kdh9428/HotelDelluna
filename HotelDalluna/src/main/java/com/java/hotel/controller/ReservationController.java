package com.java.hotel.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
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
	@GetMapping("Reservation")
	public String Reservation() throws Exception{
		logger.info("Reservation 페이지 실행"); 
		return "Reservation";
	}
	
	//예약 체크 확인 ajax
	@PostMapping("Reservation/check")
	@ResponseBody
	public boolean ReservationCheck(@RequestBody ReservationDTO reservationDTO) throws Exception{
		logger.info("ReservationCheck Ajax"+reservationDTO.getReservation_date_in()+reservationDTO.getReservation_date_out()+" : "+ reservationDTO.getRoom_type());
		ReservationDTO reservationDto = new ReservationDTO();
		reservationDto.setReservation_date_in(reservationDTO.getReservation_date_in());
		reservationDto.setReservation_date_out(reservationDTO.getReservation_date_out());
		reservationDto.setRoom_type(reservationDTO.getRoom_type());
		return reservationService.reservationCheckAjax(reservationDto);
	}
	
	//예약 체크 확인 후 없으면 예약 까지
	@PostMapping("ReservationCheck")
	public String ReservationCheck(@ModelAttribute("dto") ReservationDTO reservationDto, Model model) throws Exception{
		logger.info("ReservationCheck 컨트롤러 확인");
		 int check = reservationService.ReservationCheck(reservationDto);
		 
		 //check가 1이면 예약 되어있음 
		 if(check==1) {
			 model.addAttribute("page",check);
			 return "redirect:ReservationConfirm";
		 }else{
			 model.addAttribute("page",check);
			 return "Reservation";
		 }
	}
	
	//예약 완료 확인
	@GetMapping("ReservationConfirm")
	public String reservationConfirm(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range, Model model) {
		 List<ReservationDTO> reservationConfirm = reservationService.ReservationConfirm(page, range);
		 
		 //ReservationConfirm에 값이 없는지 확인, 없으면 1을 view로 보내서 예약하지 않았다고 체크 
		 if(reservationConfirm.isEmpty() && page <= 0) {
			 model.addAttribute("notReservation","noRoomReserve");
		 }else if(reservationConfirm.isEmpty()) {
//			 reservationConfirm = reservationService.ReservationConfirm(page - 1 , range - 1);
//			 model.addAttribute("dto",reservationConfirm.get(0));
//			 model.addAttribute("pagination", reservationService.pagination(page - 1, range - 1));
			 model.addAttribute("notReservation","noNextReservation");
		 }else {
			 model.addAttribute("dto",reservationConfirm.get(0));
			 model.addAttribute("pagination", reservationService.pagination(page, range));
		 }
		return "ReservationConfirm";
	}
	
	//예약 취소
	@DeleteMapping("reservation/{number}")
	public String ReservationConcell(@PathVariable("number") String Reservation_number) throws Exception{
		logger.info("예약 취소 확인");
		reservationService.ReservationCancell(Reservation_number);
		return"redirect:/ReservationConfirm";
	}
	
}
