package com.java.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dto.memberDetails;

@Repository("memberAuthDao")
public class MemberAuthDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberAuthDao.class);
	
	@Autowired
	private SqlSessionTemplate sqlSesstion;
	
	
	public memberDetails getUserById(String customer_id) {
		logger.info("id 확인" + customer_id);
		return sqlSesstion.selectOne("getUserById", customer_id);
	}
}
