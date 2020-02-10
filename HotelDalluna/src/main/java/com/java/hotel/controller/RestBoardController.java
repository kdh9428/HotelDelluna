package com.java.hotel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@PostMapping(value="ReplyList")
	public List<ReplyVO> replyList(@RequestParam(defaultValue = "1") int notice_number, Model model) throws Exception{
		logger.info("RestController 리플확인");
		logger.info("확인"+notice_number);
		List<ReplyVO> re = boardService.replyList(notice_number);
		return re;
	}
	
	//댓글 입력
	@PostMapping("insertReply")
	public Map<String, Object> insertReply(@RequestBody ReplyVO replyVO) throws Exception{
		Map<String, Object> result = new HashMap<>();
		try {
			boardService.insertReply(replyVO);
			result.put("status", "OK");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			result.put("status", "False");
		}
		
		return result;
	}
	
	@PutMapping("updateReply")
	public int updateReply(@RequestBody ReplyVO replyVO) throws Exception{
		return boardService.updateReply(replyVO);
	}
	
	@PostMapping("deleteReply")
	 public int deleteReply(@RequestParam("replyid") int replyid, @RequestParam("customer_id") String customer_id) throws Exception{
		return boardService.deleteReply(customer_id, replyid);
	 }
}
