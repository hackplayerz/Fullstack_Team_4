package com.spring_boot.projectEx.controller;

import java.util.ArrayList;

import com.spring_boot.projectEx.model.CategoryVO;
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
        var split = rawCategory.get(0).getSubName().split(","); // ,로 자른 서브 카테고리 문자열
        var redesignedCategory = new ArrayList<CategoryVO>();
        for(int i=0;i<split.length;i++)
        {
            CategoryVO vo = rawCategory.get(0).Clone();
            vo.setSubName(split[i]);
        	redesignedCategory.add(vo);
        }
        
        model.addAttribute("prdList", prdList);
        model.addAttribute("subCategory",redesignedCategory);
        return "html/product";
    }
	
}
