package com.spring_boot.projectEx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	@RequestMapping("/html/Insert_myPage")	//
	public String insertMypage() {
		return "/html/myPage";
	}
	
}
