package com.java.BoardDao;

import java.util.List;

import com.java.BoardCommon.Pagination;
import com.java.BoardDto.BoardVO;
import com.java.BoardDto.ReplyVO;

public interface BoardDao {
	
	//게시판 목록
	public List<BoardVO> boardList(Pagination pagination) throws Exception;
	
	//게시글 작성
	public void boardWrite(BoardVO boardVO) throws Exception;
	
	//게시글 상세보기
	public List<BoardVO> boardContent(int notice_number) throws Exception;
	
	//게시글 삭제
	public void boardDelete(int notice_number) throws Exception;
	
	//게시글 삭제 아이디 확인
	public String boardDeleteId(int notice_number) throws Exception;
	
	//게시글 업데이트
	public int boardUpdate(BoardVO boardVO) throws Exception;
	
	//총 게시글 수 확인
	public int boardListCnt() throws Exception;
	
	//댓글 리스트 
	public List<ReplyVO> replyList(int replyid) throws Exception;	
	
	//댓글 저장
	public int insertReply(ReplyVO replyVO) throws Exception;
	
	//댓글 수정
	public int updateReply(ReplyVO replyVO) throws Exception;
	
	//댓글 삭제
	public int deleteReply(int replyid) throws Exception;
	

}
