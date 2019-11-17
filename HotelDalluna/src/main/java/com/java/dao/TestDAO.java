/*
 * package com.java.dao;
 * 
 * import java.util.ArrayList;
 * 
 * import org.apache.ibatis.session.SqlSession; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.jdbc.core.JdbcTemplate;
 * 
 * import com.java.dto.ReservationDTO;
 * 
 * 
 * public class TestDAO implements InterfaceDao {
 * 
 * @Autowired private SqlSession sqlSession;
 * 
 * JdbcTemplate template;
 * 
 * public void setTemplate(JdbcTemplate template) { this.template = template; }
 * 
 * @Override public ArrayList<ReservationDTO> reservation() { // TODO
 * Auto-generated method stub return null; }
 * 
 * 
 * public List<TestDTO> listDao() {
 * 
 * String query = "select * from board order by mId desc"; ArrayList<TestDTO>
 * dtos = (ArrayList<TestDTO>) template.query(query, new
 * BeanPropertyRowMapper<TestDTO>(TestDTO.class));
 * 
 * List<TestDTO> list = sqlSession.selectList("listDao");
 * System.out.println("listDao확인"); return list; }
 * 
 * 
 * public ArrayList<TestDTO> listDao() { System.out.println("DAO확인!!!"); String
 * query = "select * from board order by mId desc"; ArrayList<TestDTO> dtos =
 * (ArrayList<TestDTO>) template.query(query,new
 * BeanPropertyRowMapper<TestDTO>(TestDTO.class)); return dtos; }
 * 
 * }
 */