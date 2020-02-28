package com.java.BoardService;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.BoardCommon.SearchPagination;
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
	public List<BoardVO> boardList(SearchPagination pagination) throws Exception {
		// TODO Auto-generated method stub
		
		return boardDao.boardList(pagination);
	}
	//게시판 작성 저장
	@Override
	public void boardInsert(BoardVO boardVO) throws Exception {
		logger.info("게시판 작성완료 BoardService");
		//title 글자수 제한
		int titleLength = boardVO.getNotice_title().length();
		if(titleLength > 100) {
			String titleCut = boardVO.getNotice_title().substring(0,100);
			boardVO.setNotice_title(titleCut);
		}
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
	
	//게시글 삭제
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
		//title 글자수 제한
		int titleLength = boardVO.getNotice_title().length();
		if(titleLength > 100) {
			String titleCut = boardVO.getNotice_title().substring(0,100);
			boardVO.setNotice_title(titleCut);
		}
		return boardDao.boardUpdate(boardVO);
	}
	
	//게시판 총 개수 확인
	@Override
	public int boardListCnt(SearchPagination pagination) throws Exception {
		return boardDao.boardListCnt(pagination);
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
	
	//댓글 삭제
	@Transactional
	@Override
	public int deleteReply(String customer_id, int replyid) throws Exception {
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String sessionId = auth.getName();
			int idCheck = 0;
			if(sessionId.equals(customer_id)) {
				idCheck= boardDao.deleteReply(replyid);
			}else {
				 idCheck = 0;
			}
		 return idCheck;
	}

}
