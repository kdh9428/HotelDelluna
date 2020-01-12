package com.java.BoardService;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.java.BoardCommon.Pagination;
import com.java.BoardDao.BoardDao;
import com.java.BoardDto.BoardVO;
import com.java.BoardDto.ReplyVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired 
	BoardDao boardDao;
	
	//게시글 리스트
	@Override
	public List<BoardVO> boardList(Pagination pagination) throws Exception {
		// TODO Auto-generated method stub
		
		return boardDao.boardList(pagination);
	}
	//게시판 작성
	@Override
	public void boardInsert(BoardVO boardVO) throws Exception {
		logger.info("게시판 작성완료 BoardService");
		/*
		 * String pw = boardVO.getBoardpw(); String encoder =
		 * passwordEncoder.encode(pw);
		 */
		/* boardVO.setBoardpw(encoder); */
		System.out.println("boardVO 확인"+boardVO.getCustomer_id());
		boardDao.boardWrite(boardVO);
		
	}
	
	//게시판 상세보기
	@Override
	public BoardVO boardContent(int notice_number) throws Exception {
		logger.info("게시글 상세보기");
		
		//게시글 조회수
		BoardVO boardvo = boardDao.boardContent(notice_number).get(0);
		boardvo.setRef(boardvo.getRef()+1);
		boardDao.boardUpdate(boardvo);
		return boardvo;
	}
	
	@Override
	public int boardDelete(int notice_number) throws Exception {
		logger.info("게시글 삭제 확인");
		int check;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String sessionId = auth.getName();
		
		//아이디 확인
		String customer_id = boardDao.boardDeleteId(notice_number);
		
		if(customer_id.equals(sessionId)) {
			boardDao.boardDelete(notice_number);
			check = 1;
			return check;
		}else {
			return check=0;
		}
	}
	//업데이트
	@Override
	public int boardUpdate(BoardVO boardVO) throws Exception {
		logger.info("업데이트 확인");
		return boardDao.boardUpdate(boardVO);
	}
	
	@Override
	public int boardListCnt() throws Exception {
		
		return boardDao.boardListCnt();
	}
	
	//리플 리스트
	@Override
	public List<ReplyVO> replyList(int notice_number) throws Exception {
		logger.info("리플 확인 service");
		return boardDao.replyList(notice_number);
	}
	
	//댓글 저장
	@Override
	public int insertReply(ReplyVO replyVO) throws Exception {
		return boardDao.insertReply(replyVO);
	}
	
	//댓글 수정
	public int updateReply(ReplyVO replyVO) throws Exception{
		return boardDao.updateReply(replyVO);
	}
	
	 @Override
	public int deleteReply(int replyid) throws Exception {
		 
		 return boardDao.deleteReply(replyid);
	}

}
