package com.base.database.service;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.database.ProductVO;
import com.base.database.dao.ProductDAO;

@Service
public class ProductService {
	
	@Autowired
	ProductDAO productDAO;
	
	public List<ProductVO> retreiveAllProducts(){
		return productDAO.retreiveAllProducts();
	}
}
