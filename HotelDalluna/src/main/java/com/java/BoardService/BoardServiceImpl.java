package com.java.BoardService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.BoardDao.BoardDao;
import com.java.BoardDto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired 
	BoardDao boardDao;
	
	@Override
	public List<BoardVO> boardList() throws Exception {
		// TODO Auto-generated method stub
		
		
		return boardDao.boardList();
	}
	
	@Override
	public Map<String, Object> boardInsert(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		
		
		return null;
	}

}
