package com.java.hotel.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.java.BoardDto.ReplyVO;
import com.java.BoardService.BoardService;

@RestController
public class RestBoardController {

	private static final Logger logger =  LoggerFactory.getLogger(RestBoardController.class);
	
	@Inject
	BoardService boardService;
	
	@RequestMapping(value="ReplyList", method=RequestMethod.POST)
	public List<ReplyVO> replyList(@RequestParam(defaultValue = "1") int notice_number, Model model) throws Exception{
		logger.info("RestController 리플확인");
		logger.info("확인"+notice_number);
		List<ReplyVO> re = boardService.replyList(notice_number);
		
		String text = re.get(0).getContext();
		System.out.println(text);
		return re;
	}
}
