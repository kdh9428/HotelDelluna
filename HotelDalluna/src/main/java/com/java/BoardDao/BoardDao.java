package com.java.BoardDao;

import java.util.List;

import com.java.BoardDto.BoardVO;

public interface BoardDao {
	
	//게시판 목록
	public List<BoardVO> boardList();
	
	//게시글 작성
	public void boardWrite(BoardVO boardVO);
	
	//게시글 상세보기
	public List<BoardVO> boardContent(int notice_number);
	
	//게시글 삭제
	public void boardDelete(int notice_number);
	
	//게시글 삭제 아이디 확인
	public String boardDeleteId(int notice_number);
}
