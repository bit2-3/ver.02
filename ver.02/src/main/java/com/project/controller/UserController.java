package com.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.user.db.UserDTO;
import com.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Inject
	private UserService service;

	@RequestMapping("/loginPage")
	public String userLoginPage() {
		return "/user/UserLogin";
	}

	@RequestMapping("/login")
	public ModelAndView userLogin(@ModelAttribute UserDTO dto, HttpSession session) throws Exception {
		boolean result = service.userLogin(dto, session);
		ModelAndView mav = new ModelAndView();
		if (result == true) {
			mav.setViewName("redirect:/board/list");
		} else {
			mav.setViewName("/user/UserLogin");
		}
		return mav;
	}

	@RequestMapping("/joinPage")
	public String userJoinPage() {
		return "/user/UserJoin";
	}

	@RequestMapping("/join")
	public String userJoin(@ModelAttribute UserDTO dto) throws Exception {
		service.userJoin(dto);
		return "redirect:/user/loginPage";
	}

	@RequestMapping("/findPage")
	public String userFindPage() {
		return "/user/UserFind";
	}

	@RequestMapping("/findIdPage")
	public String userFindIdPage() {
		return "/user/UserFindId";
	}

	@RequestMapping("/findPwPage")
	public String userFindPwPage() {
		return "/user/UserFindPw";
	}
}
