package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@RequestMapping("/list")
	public String boardList() {
		return "/board/BoardList";
	}

	@RequestMapping("/write")
	public String boardWrite() {
		return "/board/BoardWrite";
	}
}
