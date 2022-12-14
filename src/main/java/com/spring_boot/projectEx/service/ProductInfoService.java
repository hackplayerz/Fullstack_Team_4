package com.spring_boot.projectEx.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.projectEx.dao.IProductInfoDAO;
import com.spring_boot.projectEx.model.ProductVO;

@Service
public class ProductInfoService implements IProductInfoService {
	@Autowired
    @Qualifier("IProductInfoDAO")
	private IProductInfoDAO dao;
	
	@Override
	public ProductVO detailInfoProduct(String prdNo) {
		return dao.detailInfoProduct(prdNo);
	}
	
	public void visitIncrese(String prdNo) {
		dao.visitIncrese(prdNo);
	}
}
