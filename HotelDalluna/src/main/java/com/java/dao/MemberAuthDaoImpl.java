package com.java.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dto.memberDetails;

@Repository("memberAuthDao")
public class MemberAuthDaoImpl implements MemberAuthDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberAuthDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate sqlSesstion;
	
	@Override
	public memberDetails getUserById(String customer_id) {
		logger.info("id 확인" + customer_id);
		return sqlSesstion.selectOne("com.java.dao.MemberAuthDao.getUserById", customer_id);
	}
	
	//회원가입
	@Override
	public int singup(memberDetails details){
		logger.info("회원가입 확인 DAO");
		return sqlSesstion.insert("com.java.dao.MemberAuthDao.singup", details);
	}
	
	//회원가입 시 아이디 확인
	@Override
	public int doubleCheck(String customer_id) throws Exception {
		return sqlSesstion.selectOne("com.java.dao.MemberAuthDao.doubleCheck",customer_id);
	}
	
	//ajax 비밀번호 체크
	@Override
	public String userPassword(String customer_id) throws Exception {
		return sqlSesstion.selectOne("com.java.dao.MemberAuthDao.userPassword",customer_id);
	}
	
	//회원정보 불러오기
	@Override
	public List<memberDetails> userInformation(String customer_id) throws Exception {
		return sqlSesstion.selectList("com.java.dao.MemberAuthDao.userInformation",customer_id);
	}
	
	//회원정보 수정
	@Override
	public int userModify(memberDetails details) throws Exception {
		return sqlSesstion.update("com.java.dao.MemberAuthDao.userModify",details);
	}
	
	//회원 삭제
	@Override
	public int userDelete(String customer_id) throws Exception {
		return sqlSesstion.delete("com.java.dao.MemberAuthDao.userDelete",customer_id);
	}
	
	//아이디 찾기
	@Override
	public String findUserId(String customerInformation, String userEmail) throws Exception {
		HashMap<String, Object> hash = new HashMap<>();
		hash.put("customerName", customerInformation);
		hash.put("userEmail", userEmail);
		return sqlSesstion.selectOne("com.java.dao.MemberAuthDao.findId",hash);
	}
	
	//비밀번호 찾기
	@Override
	public boolean findUserPassword(String customer_id, String userEmail) throws Exception {
		HashMap<String, Object> hash = new HashMap<>();
		hash.put("customer_id", customer_id);
		hash.put("userEmail", userEmail);
		return sqlSesstion.selectOne("com.java.dao.MemberAuthDao.findPassword",hash);
	}
	
}
