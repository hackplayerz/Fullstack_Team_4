package com.spring_boot.projectEx.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.projectEx.dao.ICartDAO;
import com.spring_boot.projectEx.model.CartVO;
import com.spring_boot.projectEx.model.OrderInfoVO;
import com.spring_boot.projectEx.model.MemberVO;

@Service
public class CartService implements ICartService {
	@Autowired
	@Qualifier("ICartDAO")
	private ICartDAO dao;
	
	@Override
	public void insertCart(CartVO vo) {
		dao.insertCart(vo);
	}

	@Override
	public int checkPrdInCart(String prdNo, String memId) {
		// 장바구니에 동일 상품이 존재하는지 안하는지 확인해줌
		// 존재하면 mapper로부터 동일 상품 갯수를 반환 받아서
		// 컨트롤러에게 전달(반환)한다.
		
		//전달받은 prdNo와 memId를 map에 넣어서 Mapper에게 전달한다.
		//매개변수가 2개 이상인 경우에는 HashMap으로 전달해야 한다.
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("prdNo", prdNo);
		map.put("memId", memId);
		return dao.checkPrdInCart(map);
	}

	@Override
	public void updateQtyInCart(CartVO vo) {
		dao.updateQtyInCart(vo);

	}

	@Override
	public ArrayList<CartVO> cartList(String memId) {
		return dao.cartList(memId);
	}

	@Override
	public void deleteCart(String cartNo) {
		dao.deleteCart(cartNo);
	}

	@Override
	public MemberVO getMemberInfo(String memId) {
		return dao.getMemberInfo(memId);
	}

	@Override
	public void updateCart(CartVO vo) {
		dao.updateCart(vo);
		
	}

	@Override
	public void insertOrder(OrderInfoVO ordInfoVo) {
		// 1. 주문 정보 저장(order_info 테이블)
		dao.insertOrderInfo(ordInfoVo);
		
		// 2. 주문 상품 내용 저장(order_product 테이블)
		//	cart 테이블에서 바로 order_product 테이블로 저장
		//	cart에서 데이터를 가져오기 위해 memId와 주문번호 필요
		//	따라서 mapper에게 memId와 주문 번호를 2개의 데이터를 전달해야함(HashMap)
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ordNo", ordInfoVo.getOrdNo());
		map.put("memId", ordInfoVo.getMemId());
		
		//mapper에게 전달
		dao.insertOrderProduct(map);
		
		// 3. 주문 완료 후 장바구니 삭제
		dao.deleteCartAfterOrder(ordInfoVo.getMemId());
	}

}
