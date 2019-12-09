package com.java.BoardService;

import java.util.List;
import java.util.Map;

import com.java.BoardDto.BoardVO;

public interface BoardService {
	
	//게시판 리스트
	public List<BoardVO> boardList() throws Exception;
	
	public Map<String, Object> boardInsert(BoardVO boardVO) throws Exception;

}
