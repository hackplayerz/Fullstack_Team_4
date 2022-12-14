package com.spring_boot.projectEx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.projectEx.model.ProductVO;
import com.spring_boot.projectEx.service.ProductService;


@Controller
public class ProductController {
	@Autowired
    private ProductService service;


	@RequestMapping("/html/product/{sub}")
    public String OnProductFormView(@PathVariable String sub, Model model)
    {   
        ArrayList<ProductVO> prdList = service.ctgListProduct(sub);
        var rawCategory = service.getSubCategory(sub); // 자르지않은 데이터, 인덱스는 0뿐
        //var split = categoryList.get(0).getSubName().split(","); // ,로 자른 서브 카테고리 문자열
        //var redesignedCategory = 
        
        model.addAttribute("prdList", prdList);
        model.addAttribute("subCategory",rawCategory);
        //TODO: 문자열 자르기
        return "html/product";
    }
	
}
