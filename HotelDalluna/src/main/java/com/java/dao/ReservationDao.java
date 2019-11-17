package com.java.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dto.ReservationDTO;

@Repository
public class ReservationDao implements InterfaceDao {
	
	@Autowired
	protected SqlSession sqlSession;
	
	@Override
	public List reservation() throws Exception{
		System.out.println("dao확인");
		
		return sqlSession.selectList("reservation");
	}
	
	@Override
	public void reservationClick(ReservationDTO reservationDto) {
		System.out.println("click 확인");
		String num = reservationDto.getReservation_number();
		System.out.println("reservation_number" +num);
		sqlSession.insert("click",reservationDto);
		
	}
	

	
}
