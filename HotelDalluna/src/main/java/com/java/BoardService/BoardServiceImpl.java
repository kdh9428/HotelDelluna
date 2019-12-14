package com.java.BoardService;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.java.BoardDao.BoardDao;
import com.java.BoardDto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired 
	BoardDao boardDao;
	//게시글 리스트
	@Override
	public List<BoardVO> boardList() throws Exception {
		// TODO Auto-generated method stub
		
		return boardDao.boardList();
	}
	//게시판 작성
	@Override
	public void boardInsert(BoardVO boardVO) throws Exception {
		logger.info("게시판 작성완료 BoardService");
		String pw = boardVO.getBoardpw();
		String encoder = passwordEncoder.encode(pw);
		boardVO.setBoardpw(encoder);
		boardDao.boardWrite(boardVO);
		
	}
	
	//게시판 상세보기
	@Override
	public List<BoardVO> boardContent(int notice_number) throws Exception {
		logger.info("게시글 상세보기");
		return boardDao.boardContent(notice_number);
	}
	
	@Override
	public void boardDelete(int notice_number) throws Exception {
		logger.info("게시글 삭제 확인");
		boardDao.boardDelete(notice_number);
		
	}

}
