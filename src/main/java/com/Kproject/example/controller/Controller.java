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
import org.springframework.web.bind.annotation.RequestMethod;

import com.Kproject.example.domain.User;
import com.Kproject.example.domain.Product;
import com.Kproject.example.service.ProductService;
import com.Kproject.example.service.UserService;
import com.Kproject.example.mapper.ProductMapper;



@org.springframework.stereotype.Controller
public class Controller {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired UserService userservice;
	@Autowired ProductService productservice;
	@Autowired ProductMapper productmapper;
	
	
	
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
   	@RequestMapping(value="/admin", method=RequestMethod.GET)
   	public String admin(Model model) {
   		List<User> user = userservice.selectUser();
   		model.addAttribute("user", user);
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
   	
   	
   	
    // 관리자 페이지 Product 시작
   	@RequestMapping(value="/product", method=RequestMethod.GET)
   	public String p_index() {
   		return "/product/p_index";
   	}
   	
   	// product 업로드
   	@Secured({"ROLE_ADMIN"})
   	@RequestMapping(value="/product/form", method=RequestMethod.GET)
   	public String upload(Model model, Product product) {
   		return "/product/form";	
   	}
   	
   	@RequestMapping(value="/product/upload", method=RequestMethod.POST)
   	public String uploadProcess(Model model, Product product) {
   		productservice.upload(product);
   		return "redirect:/product";
   	}
   	
   	
   	@RequestMapping(value="/aj/chkid")
   	public String checkId(Model model, User user) {
   		model.addAttribute("user", user);
   		return "/chk";
   	}
   	
   	
   	
  
   		
}