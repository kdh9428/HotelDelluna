package com.java.dto;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;

import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@SuppressWarnings("serial")
@ToString
@Setter
@Getter
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
	private String tel; // 전화번호
	
	@NotEmpty
	@Email
	@Pattern(regexp="^([_A-Za-z0-9-_]+[._A-Za-z0-9-_]*)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([\\w-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$", message = "이메일 형식이 맞지 않습니다.")
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
	
	@Range(min = 1500, max = 2050)
	private int year;
	@Range(min = 1, max = 12)
	private int month;
	@Range(min = 1, max = 31)
	private int day;
	
	private LocalDate birthday;
	
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

