package com.java.BoardDao;

import java.util.List;

import com.java.BoardCommon.Pagination;
import com.java.BoardDto.BoardVO;

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
	
	//리플 확인
	public List<ReplyVO> replyList(int bid) throws Exception;

}
