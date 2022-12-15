package com.spring_boot.projectEx.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.projectEx.dao.IProductDAO;
import com.spring_boot.projectEx.model.CategoryVO;
import com.spring_boot.projectEx.model.ProductVO;

@Service
public class ProductService implements IProductService{
    @Autowired
    @Qualifier("IProductDAO")
    private IProductDAO dao;

    @Override
    public ArrayList<ProductVO> ListAllProduct() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ArrayList<ProductVO> ctgListProduct(String ctgId) {
        return dao.ctgListProduct(ctgId);
    }

    @Override
    public void insertProduct(ProductVO prd) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void updateProduct(ProductVO prd) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void deleteProduct(String prdNo) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public String prdNoCheck(String prdNo) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ArrayList<ProductVO> productSearch(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ArrayList<ProductVO> getSubCategoryProduct(String subCategory) {
        return dao.getSubCategoryProduct(subCategory);
    }

    @Override
	public ArrayList<CategoryVO> getSubCategory(String ctgId) {
		return dao.getSubCategory(ctgId);
	}
    
}
