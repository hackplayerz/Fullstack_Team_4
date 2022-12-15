package com.spring_boot.projectEx.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.projectEx.model.CartVO;
import com.spring_boot.projectEx.model.ProductVO;
import com.spring_boot.projectEx.service.CartService;
import com.spring_boot.projectEx.service.ProductInfoService;

@Controller
public class ProductInfoController {
	@Autowired
	private CartService cartService;
	@Autowired
	private ProductInfoService	productInfoService;
	
	@RequestMapping("/html/prdInfo/{prdNo}")
	public String prdInfo(@PathVariable String prdNo, Model model) {
		ProductVO prd = productInfoService.detailInfoProduct(prdNo);
		productInfoService.visitIncrese(prdNo);
		model.addAttribute("prd", prd);
		return "/html/prdInfo";
	}
	
	@RequestMapping("/Product/CartInCheck")
	public String insertCart(CartVO vo, HttpSession session) {
		String mbId = (String)session.getAttribute("sid");
		vo.setMbId(mbId);
		int cnt = cartService.checkPrdInCart(vo.getPrdNo(), mbId);
		if(mbId == null) {
			return "/html/login";
		}
		if(cnt == 0) {
			cartService.insertCart(vo);
		} else {
			cartService.updateQtyInCart(vo);
		}
		
		return "redirect:/product/cartList";
	}
	
	@RequestMapping("/product/cartList")
	public String cartList(Model model, HttpSession session) {
		String mbId = (String)session.getAttribute("sid");
		ArrayList<CartVO> cartList = cartService.cartList(mbId);
		model.addAttribute("cartList", cartList);

		return "/html/myPage";
	}
	
}
