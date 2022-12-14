package com.spring_boot.projectEx.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

import com.spring_boot.projectEx.model.CategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.projectEx.model.ProductVO;
import com.spring_boot.projectEx.service.ProductService;
import org.springframework.web.bind.annotation.ResponseBody;


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
        
        System.out.print("서브 카테고리 : ");
        for(var s : split)
        {
        	System.out.print(s + " ");
            CategoryVO vo = category.get(0);
            vo.setSubName(s);
            subCategory.add(vo);
        }
        System.out.println();

        model.addAttribute("subCategory", subCategory);

        return "html/product";
    }

    /*@ResponseBody
    @RequestMapping("/product/OnSubCategoryChange/${subName}")
    public String OnSubCategoryMenuClick(@PathVariable String subName, Model model)
    {
        return "";
    }*/
	
}
