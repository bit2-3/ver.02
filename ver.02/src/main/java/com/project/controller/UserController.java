package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/login")
	public String userLogin() {
		return "/user/UserLogin";
	}
	
	@RequestMapping("/join")
	public String userJoin() {
		return "/user/UserJoin";
	}
	
	@RequestMapping("/find")
	public String userFind() {
		return "/user/UserFind";
	}
	
	@RequestMapping("/findId")
	public String userFindId() {
		return "/user/UserFindId";
	}
	
	@RequestMapping("/findPw")
	public String userFindPw() {
		return "/user/UserFindPw";
	}
}
