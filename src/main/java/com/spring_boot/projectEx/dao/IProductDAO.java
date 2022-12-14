package com.spring_boot.projectEx.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.projectEx.model.CategoryVO;
import com.spring_boot.projectEx.model.ProductVO;

public interface IProductDAO
{
	public ArrayList<CategoryVO> getSubCategory(String ctgId); // 서브카테고리 조회
    public ArrayList<ProductVO> ListAllProduct(); //  전체 상품 조회    
    public ArrayList<ProductVO> ctgListProduct(String ctgId); // 카테고리별 상품 조회
    public void insertProduct(ProductVO prd); // 상품 등록
    public void updateProduct(ProductVO prd); // 상품 수정
    public void deleteProduct(String prdNo); //상품 삭제
    public String prdNoCheck(String prdNo); // 상품번호 중복 확인
    public ArrayList<ProductVO> productSearch(HashMap<String, Object> map);// 상품 검색
}