package com.java.dao;

import java.util.List;

import com.java.dto.ReservationDTO;

public interface InterfaceDao {
		
	/* public List<TestDTO> listDao(); */
	
	public List reservation() throws Exception;
	
	public void reservationClick(ReservationDTO reservationDto);
	
	//예약 
	public int reservationCheck(ReservationDTO reservationDto);
}
