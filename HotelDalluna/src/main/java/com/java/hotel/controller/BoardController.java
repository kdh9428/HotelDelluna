package com.java.hotel.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String boardList( Model model) throws Exception{
		logger.info("list 시작");
		model.addAttribute("boardList",boardService.boardList()); 
		return "list";
	}
	
	//게시판 작성 폼
	@RequestMapping("boardForm")
	public String boardForm(@ModelAttribute("boardVO")BoardVO boardVO, Model model) {
		logger.info("게시판 작성폼");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("customer_id",auth.getName());
		return "boardForm";
	}
	
	//작성글 저장
	@RequestMapping(value="boardSave", method =RequestMethod.POST)
	public String boardSave(@ModelAttribute("BoardVO") BoardVO boardvo, RedirectAttributes rra) throws Exception {
		logger.info("작성글 저장");
		boardService.boardInsert(boardvo);
		return "redirect:list.do";
	}
	
	//게시물 조회
	@RequestMapping(value="boardContent" ,method=RequestMethod.GET)
	public String boardContent(@RequestParam("notice_number") int notice_number, Model model) throws Exception{
		logger.info("게시물 상세 조회");
		model.addAttribute("content",boardService.boardContent(notice_number).get(0));
		return "boardContent";
	}
	
	//게시물 삭제
	@RequestMapping("boardDelete")
	public String boardDelete(@RequestParam("notice_number") int notice_number,Model model) throws Exception {
		logger.info("게시글 삭제");
		int check = boardService.boardDelete(notice_number);
		
		//삭제 확인 후 list페이지로 
		if(check == 1) {
			model.addAttribute("check",1);
			model.addAttribute("boardList",boardService.boardList()); 
		}else {
			model.addAttribute("check",0);
		}
		return "list";
	}
	
	//게시물 수정
	@RequestMapping(value = "editForm", method = RequestMethod.GET)
	public String editForm(@RequestParam("notice_number") int notice_number, 
						@RequestParam("mode") String mode,
						@ModelAttribute("boardVO") BoardVO boardVO, Model model) throws Exception {
		System.out.println("게시글 확인"+ notice_number + mode);
		BoardVO boardvo = boardService.boardContent(notice_number).get(0);
		boardVO.setNotice_contents(boardvo.getNotice_contents());
		boardVO.setCustomer_id(boardvo.getCustomer_id());
		boardVO.setNotice_title(boardvo.getNotice_title());
		/* model.addAttribute("content", content); */
		model.addAttribute("boardContent", boardvo);
		model.addAttribute("mode", mode);
		return "boardForm";

	}

}
