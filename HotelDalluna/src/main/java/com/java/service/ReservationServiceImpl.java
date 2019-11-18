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
		
		//예약 되어있나 확인
		int check ;
		System.out.println("reservationCheck 확인 "+date);
		check = interfaceDao.reservationCheck(reservationDto);
		
		if(check!=0) {
			
		}
		
		
		System.out.println("check 확인"+ check);
		
		
		return 0;
	}

}
