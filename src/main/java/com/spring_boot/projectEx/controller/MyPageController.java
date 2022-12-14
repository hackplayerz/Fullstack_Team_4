package com.spring_boot.projectEx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.projectEx.service.CartService;

@Controller
public class MyPageController {
	@Autowired
	private CartService service;	// 서비스 아직 안만들어짐 
	
	//마이페이지 열기
	@RequestMapping("/html/Insert_myPage")	//
	public String insertMypage() {
		return "/html/myPage";
	}
	
	//인포체인지 Bf 페이지 열기
	@RequestMapping("/html/info_Change_Bf")	//
	public String Info_Change_Bf() {
		return "/html/info_Change_Bf";
	}
	 
	
	//서비스 만들어지면 장바구니에 상품 추가하기, 목록 출력하기, 삭제하기 등 코드 삽입해야함. 
	
	//장바구니 목록 삭제하기 : 배열로 만들어진 cartNo
	@ResponseBody
	@RequestMapping("/product/deleteCart")
	public int deleteCart(@RequestParam("chbox[]") ArrayList<String> chkArr) {
		int result = 0;
		
		//배열에서 cartNo를 추출해서 해당하는 상품 삭제하기
		if(chkArr != null) {
			for(String carNo : chkArr) {
				service.deleteCart(carNo);
			}
			result = 1;	//성공
		}
			
		return result;
	}
	
	@RequestMapping("/html/orderForm")	
	public String orderForm(@RequestParam String[] memId,
			@RequestParam int[] cartNo,
			@RequestParam int[] cartQty,
			Model model) {	// 변수 더 가져와야 함
		return "/html/myPage";
	}
	
	
	
}
