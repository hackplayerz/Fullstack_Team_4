package com.spring_boot.projectEx.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {

    private String prdNo;       // 상품번호
    private String prdName;     // 상품이름
    private int prdPrice;       // 상품가격
    private String prdCompany;  // 제조회사
    private int prdStock;       // 재고
    private String prdDescript; // 상품 설명
    private String prdImg;      // 상품 이미지 경로
    private int visit;          // 방문횟수
    private int orderCount;     // 주문횟수
    private String ctgId;       // 카테고리 ID
}
