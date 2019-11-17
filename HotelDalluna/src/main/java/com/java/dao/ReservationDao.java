package com.java.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDao implements InterfaceDao {
	
	@Autowired
	protected SqlSession sqlSession;
	
	@Override
	public List reservation() throws Exception{
		System.out.println("dao확인");
		
		return sqlSession.selectList("reservation");
	}
	

	
}
