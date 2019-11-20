package com.java.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dto.ReservationDTO;

@Repository
public class ReservationDao implements InterfaceDao {
	
	@Autowired
	protected SqlSession sqlSession;
	
	//예약 확인 체크
	@Override
	public int reservationCheck(ReservationDTO reservationDto) {
		
		System.out.println("예약 확인" + reservationDto);
		int check = sqlSession.selectOne("reservationCheck", reservationDto);
		System.out.println("check 확인 값 0이면 없음 1이면 있음"+check);
		return check;
	}
	
	//룸 가격 
	@Override
	public String roomprices(ReservationDTO reservationDto) {
		System.out.println("roomprices 확인");
		String prices = sqlSession.selectOne("com.java.dao.InterfaceDao.roomprices",reservationDto);
		System.out.println("roomprices 가격 : "+prices);
		return prices;
	}
	
	//룸 인원 테이블 확인
	@Override
	public void reservationPeople(ReservationDTO reservationDto) {
			
		String aa = reservationDto.getReservation_number();
		System.out.println("룸 인원 테이블 확인" + aa);
		sqlSession.insert("com.java.dao.InterfaceDao.reservationPeople",reservationDto);
		System.out.println();
	}
	
	//예약 완료 처리
	@Override
	public void reservation(ReservationDTO reservationDto) {
		int check1 = sqlSession.insert("reservation",reservationDto);
		System.out.println("예약 완료");
		/* System.out.println("예약 완료 check"+check1); */
	}
}
