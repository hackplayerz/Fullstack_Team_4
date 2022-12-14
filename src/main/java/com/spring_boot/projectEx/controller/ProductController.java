package com.spring_boot.projectEx.controller;

import java.util.ArrayList;
import java.util.HashMap;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.spring_boot.projectEx.model.CategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
        model.addAttribute("prdList", prdList);

        ArrayList<CategoryVO> category = service.getSubCategory(sub); // 자르지않은 데이터, 인덱스는 0뿐
        String[] split = category.get(0).getSubName().split(","); // ,로 자른 서브 카테고리 문자열
        ArrayList<CategoryVO> subCategory = new ArrayList<CategoryVO>();
               
        for(var s : split)
        {        	
            CategoryVO vo = category.get(0).Clone();
            vo.setSubName(s);
            subCategory.add(vo);
        }
        

        model.addAttribute("subCategory", subCategory);
        return "html/product";
    }
	
	// TODO : ajax로 변경
	@ResponseBody // 서브카테고리 그 화면에 출력
    @RequestMapping("/product/OnSubCategoryChange")
    public ArrayList<ProductVO> OnSubCategoryMenuClick(@RequestParam String subCategory)
    {
        ArrayList<ProductVO> prdList = service.getSubCategoryProduct(subCategory);

        return prdList;
    }
	
}
