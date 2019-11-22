package com.java.service;

import com.java.dto.ReservationDTO;

public interface ReservationService {
	
	//예약 
	public ReservationDTO reservationCheck(ReservationDTO reservationDto);
	
	public void reservationCancell(String reservation_number);

}
