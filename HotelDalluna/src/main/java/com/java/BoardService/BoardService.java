package com.java.BoardService;

import java.util.List;

import com.java.BoardDto.BoardVO;

public interface BoardService {
	
	//게시판 리스트
	public List<BoardVO> boardList() throws Exception;
	
	//게시글 작성
	public void boardInsert(BoardVO boardVO) throws Exception;

	//게시글 상세보기
	public BoardVO boardContent(int notice_number) throws Exception;

	//게시글 삭제
	public int boardDelete( int notice_number) throws Exception;
	
	//게시글 업데이트
	public int boardUpdate(BoardVO boardVO) throws Exception;
}
