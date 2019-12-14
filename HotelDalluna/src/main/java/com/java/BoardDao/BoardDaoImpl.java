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
	
	
	//게시판 작성
	@Override
	public void boardWrite(BoardVO boardVO) {
		// TODO Auto-generated method stub
		logger.info("boardWrite 작성");
		sqlSession.insert("com.java.BoardDao.boardWrite",boardVO);
	}
	
	@Override
	public List<BoardVO> boardContent(int notice_number) {
		
		return sqlSession.selectList("com.java.BoardDao.boardContent", notice_number);
	}
	@Override
	public void boardDelete(int notice_number) {
		
		sqlSession.delete("com.java.BoardDao.boardDelete", notice_number);
	}
}
