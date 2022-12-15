package com.spring_boot.projectEx.service;

import java.util.ArrayList;

import com.spring_boot.projectEx.model.CartVO;
import com.spring_boot.projectEx.model.OrderInfoVO;
import com.spring_boot.projectEx.model.MemberVO;

public interface ICartService {
	public void insertCart(CartVO vo);	// 장바구니에 추가
	public int checkPrdInCart(String prdNo, String mbId);	// 동일 상품 존재 여부 확인해주는 것(반환값=동일 상품의 갯수)
	public void updateQtyInCart(CartVO vo);	// 동일 상품이 존재하면 수량을 변경해주는 것
	public ArrayList<CartVO> cartList(String mbId);	// 현재 회원의 장바구니 목록을 반환해줌
	public void deleteCart(String cartNo);	// 장바구니 삭제
	
	//주문 처리 작업에 필요한 메소드
	public MemberVO getMemberInfo(String mbId);	// 회원 정보 알아오기
	public void updateCart(CartVO vo);	//변경된 주문 수량 업데이트
	
	//주문 완료 처리 : 주문 내역 저장
	public void insertOrder(OrderInfoVO ordInfoVo);
}
