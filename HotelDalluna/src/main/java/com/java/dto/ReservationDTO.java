package com.java.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter
@Getter
@ToString
public class ReservationDTO {
	
	private String Reservation_number;//룸예약번호 
	private String customer_id;//아이디
	@JsonProperty("Reservation_date_in")
	private String Reservation_date_in;//체크인
	@JsonProperty("Reservation_date_out")
	private String Reservation_date_out;//체크아웃
	@JsonProperty("Room_type")
	private int room_type;//룸 종류
	private int adult;//성인
	private int child;//어린이
	private int price;//가격
	private int confirmation_payment;//예약 가격
	private String priceproduct;//방 전체 날짜 가격
	
}