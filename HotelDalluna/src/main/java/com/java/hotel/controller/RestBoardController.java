package com.java.hotel.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.java.BoardDto.BoardVO;
import com.java.BoardService.BoardService;

@RestController
public class RestBoardController {

	private static final Logger logger =  LoggerFactory.getLogger(RestBoardController.class);
	
	@Inject
	BoardService boardService;
	
	@PostMapping("ReplyList")
	public List<BoardVO> replyList(@RequestParam("notice_number") int notice_number){
		logger.info("RestController 리플확인");
		return boardService();
	}
	
}
