package com.java.dto;

import java.util.ArrayList;
import java.util.Collection;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings("serial")
public class memberDetails implements UserDetails{
	
	@NotEmpty
	@Length(min=4, max=20)
	@Pattern(regexp="^[a-z0-9]*$", message = "아이디를 다시 입력해 주세요")
	private String customer_id; // 고객 id
	private String zip; // 우편번호
	@NotEmpty
	@Pattern(regexp = "^[가-힇a-zA-Z]*$")
	private String customer_name; // 성함
	@NotEmpty
	@Pattern(regexp="^(01[016789])(\\\\d{3,4})(\\\\d{4})$")
	private String tel; // 전화번호
	@NotEmpty
	@Email
	@Pattern(regexp="^([_A-Za-z0-9-_]+[._A-Za-z0-9-_]*)@((\\\\[[0-9]{1,3}\\\\.[0-9]{1,3}\\\\.[0-9]{1,3}\\\\.)|(([\\\\w-]+\\\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\\\]?)$", message = "이메일 형식이 맞지 않습니다.")
	private String userEmail; // 이메일
	
	@NotEmpty
	@Length(min=8,max=20)
	@Pattern(regexp=".*(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]).*")
	private String password; // 비밀번호
	@NotEmpty(message = "비밀번호확인 null")
	private String password2;
	private String userEmailHash;
	private boolean userEmailChecked;
	private String authority;
	@NotEmpty(message = "년 null")
	private String year;
	@NotEmpty(message = "달 null")
	private String month;
	@NotEmpty(message = "일 null")
	private String day;
	private String birthday;
	
	
	
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserEmailHash() {
		return userEmailHash;
	}
	public void setUserEmailHash(String userEmailHash) {
		this.userEmailHash = userEmailHash;
	}
	public boolean isUserEmailChecked() {
		return userEmailChecked;
	}
	public void setUserEmailChecked(boolean userEmailChecked) {
		this.userEmailChecked = userEmailChecked;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		auth.add(new SimpleGrantedAuthority(authority));
		return auth;
	}
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return customer_id;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return userEmailChecked;
	}

}

