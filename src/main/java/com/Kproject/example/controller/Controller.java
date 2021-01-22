package com.Kproject.example.controller;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Kproject.example.domain.User;

import com.Kproject.example.service.UserService;



@org.springframework.stereotype.Controller
public class Controller {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired UserService userservice;
	
	
	
   @RequestMapping("/")
   public String home(Model model) {
       return "/index";
       
   }  
       
    @RequestMapping("/beforeSignup") 
   	public String beforeSignup() {
   		return "/signup";
   	}
   	
   	@RequestMapping("/signup")
   	public String signup(User user) {
   		
   		//비밀번호 암호화
   		String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
   		
   		//유저 데이터 세팅
	    user.setPassword(encodedPassword);
	    user.setAccountNonExpired(true);
	    user.setEnabled(true);
	    user.setAccountNonLocked(true);
	    user.setCredentialsNonExpired(true);
	    user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));   
	      
	    //유저 생성
	    userservice.createUser(user);
	    //유저 권한 생성
	    userservice.createAuthorities(user);

   	    return "/login";
   }
   	
   	@RequestMapping(value="/login")
   	public String beforeLogin(Model mdoel) {
   		return "/login";
   	}
   	
   	@Secured({"ROLE_ADMIN"})
   	@RequestMapping(value="/admin")
   	public String admin(Model model) {
   		return "/admin";
   	}
   	
   	@Secured({"ROLE_USER"})
   	@RequestMapping(value="/user/info")
   public String userInfo(Model model) {
      
      return "/user_info";
   }


   	
   	@RequestMapping(value="/denied")
   	public String denied(Model model) {
   		return "/denied";
   	}
}