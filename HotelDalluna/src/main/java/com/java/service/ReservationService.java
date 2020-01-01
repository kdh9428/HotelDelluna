package com.java.service;

import java.util.List;

import com.java.BoardCommon.Pagination;
import com.java.dto.ReservationDTO;

public interface ReservationService {
	
	//예약 
	public int reservationCheck(ReservationDTO reservationDto);
	
	public void reservationCancell(String reservation_number);
	
	//예약 완료 확인
	public List<ReservationDTO> reservationConfirm(Pagination pagination);
	
	//예약 개수 확인
	public int reservationCount(String customer_id);

}
