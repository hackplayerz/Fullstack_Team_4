package com.spring_boot.projectEx.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	//혹시몰라서 써놓음
//	@Autowired
//    private CartService service;	//서비스 클래스 만들어져야 함 
	
	// index 페이지 열기
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
//    @RequestMapping("/member/insertMypage")
//    public String insertMypage(vo변수 vo, HttpSession session) {
//    	//로그인 성공 시, 세션 값을 가져와서 사용
//    	String mbId = (String)session.getAttribute("sid");
//    	vo.setMbId(mbId);	// vo mbId 값 설정
//    	
//    	//1. 동일 상품이 존재하는지 확인하기 : 동일 상품의 갯수를 반환한다.
//    	int count = service.checkPrdInCart(vo.getPrdNo(), mbId);
//    	
//    	//2. 동일 상품이 존재하지 않으면(count == 0), 장바구니에 추가하기
//    	if(count == 0) {	//2번은 여기에 해당
//    		service.insertCart(vo);
//    	}else { //3. 동일 상품이 존재하면, 주문 수량 변경하기
//    		service.updateQtyInCart(vo);
//    	}
//    	
//    	//마이페이지(장바구니 목록)를 출력 요청하는 포워딩 작성하기
//    	return "redirect:/member/cartList";	//마이페이지bf로 이동하고 비밀번호 맞으면 이동
//    	
//    }
    
    
    
    
}
