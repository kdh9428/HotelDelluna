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
	public void reservationClick(ReservationDTO reservationDto) {
		// TODO Auto-generated method stub
		
		interfaceDao.reservationClick(reservationDto);
		
		
	}

}
