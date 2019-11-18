package com.java.dao;

import java.util.List;

import com.java.dto.ReservationDTO;

public interface InterfaceDao {
		
	/* public List<TestDTO> listDao(); */
	
	public List reservation() throws Exception;
	
	public void reservationClick(ReservationDTO reservationDto);
	
	//예약 확인(체크인, 체크아웃, 룸 타입을 비교해서 테이블 확인
	public int reservationCheck(ReservationDTO reservationDto);
	
	//룸 정보
	public String roomprices(ReservationDTO reservationDto);
}
