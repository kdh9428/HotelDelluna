package com.java.hotel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.BoardDto.BoardVO;
import com.java.BoardService.BoardService;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService boardService;
	
	//게시판 리스트
	@RequestMapping("list")
	public String boardList(Model model) throws Exception{
		logger.info("list 시작");
		model.addAttribute("boardList",boardService.boardList()); 
		return "list";
	}
	
	//게시판 작성 폼
	@RequestMapping("boardForm")
	public String boardForm() {
		logger.info("게시판 작성폼");
		return "boardForm";
	}
	
	//작성글 저장
	@RequestMapping("boardSave")
	public String boardSave(@ModelAttribute("BoardVO") BoardVO boardvo, RedirectAttributes rra) throws Exception {
		
		boardService.boardInsert(boardvo);
		return "redirect:boardSave";
	}
}
