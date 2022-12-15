package com.spring_boot.projectEx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.projectEx.model.ProductVO;
import com.spring_boot.projectEx.service.MainService;

@Controller
public class MainController {

	@Autowired
    private MainService service;
	
	// index 페이지 열기
	@RequestMapping("/")
	public String index(Model model) {
        ArrayList<ProductVO> prdListDate = service.newDataProduct();
        model.addAttribute("prdListDate", prdListDate);

		ArrayList<ProductVO> prdListVisit = service.visitProduct();
        model.addAttribute("prdListVisit", prdListVisit);

		ArrayList<ProductVO> prdListOrder = service.orderProduct();
        model.addAttribute("prdListOrder", prdListOrder);
		return "index";
	}
    
}
