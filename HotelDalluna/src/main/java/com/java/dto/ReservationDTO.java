package com.java.dto;

public class ReservationDTO {
	private String reservation_number;//룸예약번호
	private String customer_id;//아이디
	private String reservation_data_in;//체크인
	private String reservation_data_out;//체크아웃
	private int room_type;//룸 종류
	private int adult;//성인
	private int child;//어린이
	private int price;//가격
	private int confirmation_payment;//예약 가격
	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getRoom_type() {
		return room_type;
	}

	public void setRoom_type(int room_type) {
		this.room_type = room_type;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public String getReservation_number() {
		return reservation_number;
	}

	public void setReservation_number(String reservation_number) {
		this.reservation_number = reservation_number;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getReservation_data_in() {
		return reservation_data_in;
	}

	public void setReservation_data_in(String reservation_data_in) {
		this.reservation_data_in = reservation_data_in;
	}

	public String getReservation_data_out() {
		return reservation_data_out;
	}

	public void setReservation_data_out(String reservation_data_out) {
		this.reservation_data_out = reservation_data_out;
	}

	public int getConfirmation_payment() {
		return confirmation_payment;
	}

	public void setConfirmation_payment(int confirmation_payment) {
		this.confirmation_payment = confirmation_payment;
	}
	
	
	
	
}
