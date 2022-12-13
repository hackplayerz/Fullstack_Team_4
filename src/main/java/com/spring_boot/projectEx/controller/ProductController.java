package com.spring_boot.projectEx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {
	
	@RequestMapping("/html/product")
    public String OnProductFormView()
    {
        return "html/product";
    }
	
}
