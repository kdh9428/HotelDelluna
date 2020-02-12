package com.java.dao;

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
		System.out.println("체크확인"+customer_id);
		return sqlSesstion.selectOne("com.java.dao.MemberAuthDao.doubleCheck",customer_id);
	}
	
	
}
