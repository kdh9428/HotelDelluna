package com.java.hotel.controller;


import java.text.DecimalFormat;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;



@Controller
public class ReservationConfirmController  {
	private static final Logger logger = LoggerFactory.getLogger(ReservationConfirmController.class);
	
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="Reseravtion.do", method=RequestMethod.GET)
	public String Reservation(){
		
		String page="";
		
		
		//예약 확인 페이지 
		/*
		 * HttpSession session = request.getSession();
		 * 
		 * String customer_id =
		 * (String)request.getSession().getAttribute("customer_id");
		 * 
		 * System.out.println("예약 확인 아이디 체크"+customer_id);
		 * 
		 * if(customer_id==null || customer_id ==""){ System.out.println("로그인 안함");
		 * request.setAttribute("msg", "로그인 해주세요");
		 * request.setAttribute("href","hewon.jsp"); page="asc.jsp";
		 * 
		 * }else {
		 * 
		 * ReservationDAO check=new ReservationDAO(); ReservationDTO
		 * reservationCheck=check.reservation_check(customer_id);
		 * request.setAttribute("reservation_number",
		 * reservationCheck.getReservation_number());
		 * request.setAttribute("customer_id", reservationCheck.getCustomer_id());
		 * request.setAttribute("reservation_data_in",
		 * reservationCheck.getReservation_data_in());
		 * request.setAttribute("reservation_data_out",
		 * reservationCheck.getReservation_data_out()); request.setAttribute("adult",
		 * reservationCheck.getAdult()); request.setAttribute("child",
		 * reservationCheck.getChild()); String reservation_number =
		 * reservationCheck.getReservation_number();
		 * 
		 * System.out.println(" 예약 번호 확인  : "+reservation_number); //룸이름 확인 int
		 * roomname= reservationCheck.getRoom_type(); String room_type="";
		 * switch(roomname) { case 1: room_type="디럭스 더블"; break; case 2:
		 * room_type="디럭스 트윈"; break; case 3: room_type="패밀리 스위트"; break; case 4:
		 * room_type="그랜드 스위트"; break; }
		 * 
		 * request.setAttribute("room_type", room_type);
		 * 
		 * //1000단위 , 설정 DecimalFormat df = new DecimalFormat("##,###원"); String price =
		 * (String)df.format(reservationCheck.getPrice());
		 * 
		 * 
		 * //결제 세션 생성 session.setAttribute("reservation_number", reservation_number);
		 * 
		 * //예약 성공 세션 관리 session.setAttribute("reservation_data_in",
		 * reservationCheck.getReservation_data_in());
		 * session.setAttribute("reservation_data_out",
		 * reservationCheck.getReservation_data_out()); session.setAttribute("price",
		 * price);
		 * 
		 * page="ReservationConfirm.jsp"; }
		 */
		return "";
	}

}
