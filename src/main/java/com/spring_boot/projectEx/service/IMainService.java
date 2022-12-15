package com.spring_boot.projectEx.service;

import java.util.ArrayList;

import com.spring_boot.projectEx.model.ProductVO;

public interface IMainService {
    public ArrayList<ProductVO> newDataProduct(); // 최신 데이터 조회
    public ArrayList<ProductVO> visitProduct(); //많이 보는 상품 조회
    public ArrayList<ProductVO> orderProduct(); //주문량이 많은 상품
}
