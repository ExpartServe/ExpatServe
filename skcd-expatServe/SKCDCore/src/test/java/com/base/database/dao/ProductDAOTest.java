package com.base.database.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.base.database.ProductVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:db/spring-database.xml","classpath:test-config.xml"})
public class ProductDAOTest {

	@Autowired
	ProductDAO productDAO;
	
	@Test 
	public void testRetreiveAllProducts() {
		List<ProductVO> productList=productDAO.retreiveAllProducts();
		System.out.println(productList.size());
	}

}
