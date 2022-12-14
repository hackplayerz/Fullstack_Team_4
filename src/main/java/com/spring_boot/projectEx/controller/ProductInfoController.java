package com.spring_boot.projectEx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.projectEx.model.ProductVO;
import com.spring_boot.projectEx.service.ProductInfoService;

@Controller
public class ProductInfoController {
	@Autowired
	private ProductInfoService service;
	
	@RequestMapping("/html/prdInfo/{prdNo}")
	public String prdInfo(@PathVariable String prdNo, Model model) {
		ProductVO prd = service.detailInfoProduct(prdNo);
		model.addAttribute("prd", prd);
		return "/html/prdInfo";
	}
	
}
