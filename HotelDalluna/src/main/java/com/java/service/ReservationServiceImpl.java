package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.InterfaceDao;
import com.java.dto.ReservationDTO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	protected InterfaceDao interfaceDao;
	
	
	@Override
	public List reservation() throws Exception{
		
		System.out.println("서비스 확인");
		List reservation = interfaceDao.reservation(); 
		
		return reservation;
	}
	
	@Override
	public void reservationTest(ReservationDTO reservationDto) {
		// TODO Auto-generated method stub
		
		interfaceDao.reservationClick(reservationDto);
	}
	
	@Override
	public int reservationCheck(ReservationDTO reservationDto) {
		
		String date = reservationDto.getReservation_date_in();
		
		////체크인, 체크아웃, 룸타입을 비교해서 테이블이 있으면 예약 되어 있다.
		int check ;
		System.out.println("reservationCheck 확인 "+date);
		check = interfaceDao.reservationCheck(reservationDto);
		System.out.println("Service에서 check 확인"+ check);
		if(check==0) {
			//룸 정보 테이블에서 룸 가격을 가져온다.
			String roomprices = interfaceDao.roomprices(reservationDto);
		}else {
			
			System.out.println("예약 되어있는 날짜");
			
		}
		
		return 0;
	}

}
