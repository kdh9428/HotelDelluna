package com.java.BoardDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.BoardCommon.SearchPagination;
import com.java.BoardDto.BoardVO;
import com.java.BoardDto.ReplyVO;

@Repository
public class BoardDaoImpl implements BoardDao {

	private static final Logger logger =  LoggerFactory.getLogger(BoardDaoImpl.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BoardVO> boardList(SearchPagination pagination)throws Exception {
		logger.info("boardList Dao 시작");
		return sqlSession.selectList("com.java.BoardDao.boardList", pagination);
	}
	
	//게시판 작성
	@Override
	public void boardWrite(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		logger.info("boardWrite 작성");
		sqlSession.insert("com.java.BoardDao.boardWrite",boardVO);
	}
	
	//상세보기
	@Override
	public List<BoardVO> boardContent(int notice_number) throws Exception{
		return sqlSession.selectList("com.java.BoardDao.boardContent", notice_number);
	}
	
	//게시글 삭제 아이디확인
	@Override
	public String boardDeleteId(int notice_number)throws Exception {
		logger.info("게시글 삭제 아이디 확인");
		return sqlSession.selectOne("com.java.BoardDao.boardDeleteId", notice_number);
	}
	
	//게시글 삭제
	@Override
	public void boardDelete(int notice_number)throws Exception {
		sqlSession.delete("com.java.BoardDao.boardDelete", notice_number);
	}
	
	//게시글 업데이트
	@Override
	public int boardUpdate(BoardVO boardVO) throws Exception {
		logger.info("게시글 업데이트 확인"+boardVO.getRef());
		return sqlSession.update("com.java.BoardDao.boardUpdate", boardVO);
	}
	
	//게시글 리스트 개수 확인
	@Override
	public int boardListCnt(SearchPagination pagination) throws Exception {
		return sqlSession.selectOne("com.java.BoardDao.boardListCnt", pagination);
	}
	
	//댓글 불러오기
	@Override
	public List<ReplyVO> replyList(int notice_number) throws Exception {
		
		return sqlSession.selectList("com.java.board.reply.replyList", notice_number);
	}
	
	//댓글 저장
	@Override
	public int insertReply(ReplyVO replyVO) throws Exception {
		return sqlSession.insert("com.java.board.reply.insertReply", replyVO);
	}
	
	//댓글 수정
	@Override
	public int updateReply(ReplyVO replyVO) throws Exception {
		return sqlSession.update("com.java.board.reply.updateReply", replyVO);
	}
	
	//댓글 삭제
	@Override
	public int deleteReply(int replyid) throws Exception {
		return sqlSession.delete("com.java.board.reply.deleteReply",replyid);
	}
}
