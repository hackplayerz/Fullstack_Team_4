package com.spring_boot.projectEx.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.projectEx.model.CartVO;
import com.spring_boot.projectEx.model.MemberVO;
import com.spring_boot.projectEx.service.CartService;
import com.spring_boot.projectEx.service.MemberService;

@Controller
public class MyPageController {
	@Autowired
	private CartService service;	// 서비스 아직 안만들어짐 
	
	@Autowired
	private MemberService memservice;	// 서비스 아직 안만들어짐 
	
	//===================================== 사이드바 =======================================
	
	//마이페이지 열기
	@RequestMapping("/html/Insert_myPage")	//
	public String insertMypage() {
		return "/html/myPage";
	}
	
	//인포체인지 Bf 페이지 열기
	@RequestMapping("/html/info_Change_Bf")	//
	public String Info_Change_Bf(HttpSession session, Model model) {
		//모델
		model.addAttribute("MbId", session.getAttribute("sid"));
		return "/html/info_Change_Bf";
	}
	
	//===================================================================================
	
	//===================================== 인포 체인지 Bf 화면 ============================= 
	@ResponseBody
	@RequestMapping("/member/info_Chainge_Login")
	public String info_Chainge_Login(@RequestParam HashMap<String, Object> param,
												HttpSession session) {
		// 로그인 체크 결과 기능이 같아서 가져옴
		String result = memservice.loginCheck(param); // result : "success" 또는 "fail"
		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
		// 서비스에서 "success" 반환받았으면
		if(result.equals("success")) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("id"));			
		}
		
		return result;
	}
	
	//===================================================================================
	
	//서비스 만들어지면 장바구니에 상품 추가하기, 목록 출력하기, 삭제하기 등 코드 삽입해야함. 
	
	//장바구니에 데이터 추가하기 : 프로덕트 인포 컨트롤러 33 ~ 48라인에 존재
	//장바구니 목록 출력 : 프로덕트 인포 컨트롤러 50 ~ 57 라인에 존재 
	
	
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
	
	// 오더 폼 열기
	@RequestMapping("/html/orderForm")	
	public String orderForm(@RequestParam String[] memId,
			@RequestParam int[] cartNo,
			@RequestParam int[] cartQty,
			Model model) {	// 변수 더 가져와야 함
		// 1. [주문하기] 버튼 누르면 변경된 주문수량을 적용하기 위해 먼저 update 수행
		for(int i=0; i<cartNo.length;i++) {
			// Mapper에게 vo로 전달하기 위해 받아온 값으로 vo 값 설정
			CartVO vo = new CartVO();
			vo.setCartNo(cartNo[i]);
			vo.setCartQty(cartQty[i]);
			service.updateCart(vo);
		}
		
		MemberVO memVo = service.getMemberInfo(memId[0]);
		// 전화번호 반환 값 : 010-1111-1111
		// 주문서에는 <input> 3개에 출력하기 위해서 전화번호를 split 해준다
		String[] hp = (memVo.getMbHp()).split("-");
		//주문서에 주문자 정보를 출력하기 위해 model에 저장한다
		model.addAttribute("memVo", memVo);
		model.addAttribute("hp1", hp[0]);
		model.addAttribute("hp2", hp[1]);
		model.addAttribute("hp3", hp[2]);
		
		// 3.장바구니 목록 가져오기
		ArrayList<CartVO> cartList = service.cartList(memId[0]);
		model.addAttribute("cartList", cartList);
		
		return "/html/orderForm";
	}
	
	//인포체인지(개인정보변경) 페이지 열기
	@RequestMapping("/html/info_Change")	
	public String info_Change(HttpSession session, Model model) {
		String mbId = (String)session.getAttribute("sid");
		
		MemberVO vo = new MemberVO();
		
		vo = memservice.memberRcv(mbId);
		model.addAttribute("vo", vo);
		
		return "/html/info_Change";
	}
	
	
	
}
