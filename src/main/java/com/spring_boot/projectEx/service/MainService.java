package com.spring_boot.projectEx.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.projectEx.dao.IMainDAO;
import com.spring_boot.projectEx.model.ProductVO;

@Service
public class MainService implements IMainService{

    @Autowired
    @Qualifier("IMainDAO")
    private IMainDAO dao;
    
    @Override
    public ArrayList<ProductVO> newDataProduct() { 
        // TODO 최신데이터조회
        return dao.newDataProduct();
    }

    @Override
    public ArrayList<ProductVO> visitProduct() {
        // TODO 많이본 데이터조회
        return dao.visitProduct();
    }

    @Override
    public ArrayList<ProductVO> orderProduct() {
        // TODO 주문 데이터조회
        return dao.orderProduct();
    }
    
}
