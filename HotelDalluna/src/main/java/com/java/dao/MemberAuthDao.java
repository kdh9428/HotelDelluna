package com.java.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dto.memberDetails;

@Repository("memberAuthDao")
public class MemberAuthDao {
	
	@Autowired
	private SqlSessionTemplate sqlSesstion;
	
	public memberDetails getUserById(String customer_id) {
		System.out.println("MemberAuthDao확인 ");
		return sqlSesstion.selectOne("getUserById", customer_id);
	}
}
