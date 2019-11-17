package com.java.service;

import java.util.List;

import com.java.dto.ReservationDTO;

public interface ReservationService {
	
	public List reservation() throws Exception;
	
	public void reservationClick(ReservationDTO reservationDto);

}
