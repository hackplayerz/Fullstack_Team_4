package com.spring_boot.projectEx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
	
	@RequestMapping("/html/product/{sub}")
    public String OnProductFormView(@PathVariable String sub, Model model)
    {   
        return "html/product";
    }
	
}
