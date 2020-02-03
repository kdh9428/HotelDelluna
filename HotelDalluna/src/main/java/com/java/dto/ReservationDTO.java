package com.java.dto;

public class ReservationDTO {
	private String Reservation_number;//룸예약번호 
	private String customer_id;//아이디
	private String Reservation_date_in;//체크인
	private String Reservation_date_out;//체크아웃
	private int room_type;//룸 종류
	private int adult;//성인
	private int child;//어린이
	private int price;//가격
	private int confirmation_payment;//예약 가격
	private String priceproduct;//방 전체 날짜 가격
	
	public String getReservation_number() {
		return Reservation_number;
	}
	public void setReservation_number(String Reservation_number) {
		this.Reservation_number = Reservation_number;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getReservation_date_in() {
		return Reservation_date_in;
	}
	public void setReservation_date_in(String Reservation_date_in) {
		this.Reservation_date_in = Reservation_date_in;
	}
	public String getReservation_date_out() {
		return Reservation_date_out;
	}
	public void setReservation_date_out(String Reservation_date_out) {
		this.Reservation_date_out = Reservation_date_out;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getConfirmation_payment() {
		return confirmation_payment;
	}
	public void setConfirmation_payment(int confirmation_payment) {
		this.confirmation_payment = confirmation_payment;
	}
	public String getPriceproduct() {
		return priceproduct;
	}
	public void setPriceproduct(String priceproduct) {
		this.priceproduct = priceproduct;
	}
	
	
	
}