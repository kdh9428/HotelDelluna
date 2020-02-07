package com.java.dao;

import java.util.List;

import com.java.BoardCommon.Pagination;
import com.java.dto.ReservationDTO;

public interface ReservationDao {
		
	/* public List<TestDTO> listDao(); */
	
	/*public List Reservation() throws Exception;*/
	
	//예약 가능 확인(체크인, 체크아웃, 룸 타입을 비교해서 테이블 확인
	public boolean ReservationCheck(ReservationDTO ReservationDto);
	
	//룸 정보
	public String roomprices(ReservationDTO ReservationDto);
	
	//룸 인원 테이블 
	public void ReservationPeople(ReservationDTO ReservationDto);
	
	//예약에 필요한 메소드 수행 후 예약 완료
	public int Reservation(ReservationDTO ReservationDto);
	
	//예약 취소
	public void ReservationCancell(String Reservation_number);
	
	//예약 완료 후 예약 확인
	public List<ReservationDTO> ReservationConfirm(Pagination pagination);
	
	//총 예약 완료 개수 확인
	public int ReservationCount (String customer_id);
	
	
}
