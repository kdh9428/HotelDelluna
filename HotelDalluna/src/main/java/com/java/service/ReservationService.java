package com.java.service;

import java.util.List;

import com.java.BoardCommon.Pagination;
import com.java.dto.ReservationDTO;

public interface ReservationService {
	
	//예약 
	public int ReservationCheck(ReservationDTO ReservationDto);
	
	public void ReservationCancell(String Reservation_number);
	
	
	//ajax 예약체크
	public boolean reservationCheckAjax(ReservationDTO reservationDto);
	
	//예약 완료 확인
	public List<ReservationDTO> ReservationConfirm(int page, int range);
	
	//예약 개수 확인
	public int ReservationCount(String customer_id);

	//페이징 처리
	public Pagination pagination(int page, int range);
}
