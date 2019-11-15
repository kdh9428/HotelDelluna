package com.java.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.java.dto.TestDTO;


public class ReservationDao  {

	JdbcTemplate template;
	/*
	 * @Override public TestDTO Dao() { // TODO Auto-generated method stub return
	 * null; }
	 */
		
	@Override
	public ArrayList<TestDTO> listDao() {
		// TODO Auto-generated method stub
		return null;
	}
	public void setTemplate(JdbcTemplate template) {
		
		this.template = template;
	}
	
		@Autowired
		public String insertArticle() {
			
			return "";
		}
}
