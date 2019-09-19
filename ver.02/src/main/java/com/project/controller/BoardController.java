package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.board.db.BoardDTO;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService service;

	@RequestMapping("/list")
	public String boardList(Model model) throws Exception {
		List<BoardDTO> boardList = service.boardList();
		model.addAttribute("boardList", boardList);
		return "/board/BoardList";
	}

	@RequestMapping("/detail")
	public ModelAndView boardDetail(@RequestParam int no) throws Exception {
		service.boardHit(no);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/BoardDetail");
		mav.addObject("boardDetail", service.boardDetail(no));
		return mav;
	}

	@RequestMapping("/delete")
	public String boardDelete(@RequestParam int no) throws Exception {
		service.boardDelete(no);
		return "redirect:/board/list";
	}

	@RequestMapping("/writePage")
	public String boardWritePage() {
		return "/board/BoardWrite";
	}

	@RequestMapping("/write")
	public String boardWrite(@ModelAttribute BoardDTO dto) throws Exception {
		service.boardWrite(dto);
		return "redirect:/board/list";
	}

	@RequestMapping("/editPage")
	public ModelAndView boardEditPage(@RequestParam int no) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/BoardEdit");
		mav.addObject("boardEdit", service.boardDetail(no));
		return mav;
	}
	
	@RequestMapping("/edit")
	public String boardEdit(@ModelAttribute BoardDTO dto) throws Exception {
		service.boardEdit(dto);
		return "redirect:/board/detail?no="+ dto.getNo();
	}
}
