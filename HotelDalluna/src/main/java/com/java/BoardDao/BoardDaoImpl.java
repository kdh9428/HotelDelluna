package com.java.BoardDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.BoardDto.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao {

	private static final Logger logger =  LoggerFactory.getLogger(BoardDaoImpl.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BoardVO> boardList() {

		logger.info("boardList Dao 시작");
		
		return sqlSession.selectList("com.java.BoardDao.boardList");
	}

}
