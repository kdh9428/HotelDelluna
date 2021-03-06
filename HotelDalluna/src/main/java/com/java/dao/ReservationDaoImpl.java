package com.java.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.BoardCommon.Pagination;
import com.java.dto.ReservationDTO;

@Repository
public class ReservationDaoImpl implements ReservationDao {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationDaoImpl.class);
	
	@Autowired
	protected SqlSession sqlSession;
	
	//예약 가능 확인 체크
	@Override
	public boolean ReservationCheck(ReservationDTO ReservationDto) {
		logger.info("ReservationCheck 확인");
		//System.out.println("check 확인 값 0이면 없음 1이면 있음");
		return sqlSession.selectOne("ReservationCheck", ReservationDto);
	}
	
	//룸 가격 
	@Override
	public String roomprices(ReservationDTO ReservationDto) {
		logger.info("룸 가격");
		return sqlSession.selectOne("com.java.dao.ReservationDao.roomprices",ReservationDto);
	}
	
	//룸 인원 테이블 확인
	@Override
	public void ReservationPeople(ReservationDTO ReservationDto) {
		logger.info("룸 인원 테이블 확인");
		sqlSession.insert("com.java.dao.ReservationDao.ReservationPeople",ReservationDto);
	}
	
	//예약 완료 처리
	@Override
	public int Reservation(ReservationDTO ReservationDto) {
		logger.info("예약 완료");
		return sqlSession.insert("Reservation",ReservationDto);
	}
	
	//예약 취소
	@Override
	public void ReservationCancell(String Reservation_number) {
		logger.info("예약 취소");
		sqlSession.delete("ReservationCancell", Reservation_number);
	}
	
	//예약 완료 후 예약 확인
	@Override
	public List<ReservationDTO> ReservationConfirm(Pagination pagination) {
		logger.info("예약 완료 확인 Dao");
		return sqlSession.selectList("com.java.dao.ReservationDao.ReservationConfirm", pagination);
	}
	
	//예약 완료 개수 확인
	@Override
	public int ReservationCount(String customer_id) {
		logger.info("Dao 예약 완료 총 개수");
		int a = sqlSession.selectOne("com.java.dao.ReservationDao.ReservationCount" ,customer_id);
		return a;
	}
}
