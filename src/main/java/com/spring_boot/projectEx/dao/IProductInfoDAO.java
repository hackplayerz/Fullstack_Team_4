package com.spring_boot.projectEx.dao;

import com.spring_boot.projectEx.model.ProductVO;

public interface IProductInfoDAO {
	public ProductVO detailInfoProduct(String prdNo);
}
