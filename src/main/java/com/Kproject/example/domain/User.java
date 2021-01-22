package com.Kproject.example.domain;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class User implements UserDetails {
	
	private static final long serialVersionUID = 1L;
	
	private String username;		// u_id 아이디
	private String password;		// 비밀번호
	private String uName;			// 이름
	private String uBirth;			// 생일
	private String uEmail;			// 이메일주소
	private String uPhone;			// 핸드폰번호
	private String uGender;			// 성별
	
	
	// security 관련
	private Collection<? extends GrantedAuthority> authorities;
	
	private boolean isAccountNonExpired;
	private boolean isAccountNonLocked;
	private boolean isCredentialsNonExpired;
	private boolean isEnabled;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuBirth() {
		return uBirth;
	}
	public void setuBirth(String uBirth) {
		this.uBirth = uBirth;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	public String getuGender() {
		return uGender;
	}
	public void setuGender(String uGender) {
		this.uGender = uGender;
	}
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
	

	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}
	
	@Override
	public boolean isAccountNonExpired() {
		return isAccountNonExpired;
	}
	public void setAccountNonExpired(boolean isAccountNonExpired) {
		this.isAccountNonExpired = isAccountNonExpired;
	}
	
	@Override
	public boolean isAccountNonLocked() {
		return isAccountNonLocked;
	}
	public void setAccountNonLocked(boolean isAccountNonLocked) {
		this.isAccountNonLocked = isAccountNonLocked;
	}
	
	@Override
	public boolean isCredentialsNonExpired() {
		return isCredentialsNonExpired;
	}
	public void setCredentialsNonExpired(boolean isCredentialsNonExpired) {
		this.isCredentialsNonExpired = isCredentialsNonExpired;
	}
	
	@Override
	public boolean isEnabled() {
		return isEnabled;
	}
	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", uName=" + uName + ", uBirth=" + uBirth
				+ ", uEmail=" + uEmail + ", uPhone=" + uPhone + ", uGender=" + uGender + ", authorities=" + authorities
				+ ", isAccountNonExpired=" + isAccountNonExpired + ", isAccountNonLocked=" + isAccountNonLocked
				+ ", isCredentialsNonExpired=" + isCredentialsNonExpired + ", isEnabled=" + isEnabled
				+ ", getUsername()=" + getUsername() + ", getPassword()=" + getPassword() + ", getuName()=" + getuName()
				+ ", getuBirth()=" + getuBirth() + ", getuEmail()=" + getuEmail() + ", getuPhone()=" + getuPhone()
				+ ", getuGender()=" + getuGender() + ", getAuthorities()=" + getAuthorities()
				+ ", isAccountNonExpired()=" + isAccountNonExpired() + ", isAccountNonLocked()=" + isAccountNonLocked()
				+ ", isCredentialsNonExpired()=" + isCredentialsNonExpired() + ", isEnabled()=" + isEnabled()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	

}
