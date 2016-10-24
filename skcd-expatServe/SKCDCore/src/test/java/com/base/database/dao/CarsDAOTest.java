package com.base.database.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.base.database.CarsSpecVO;
import com.base.database.CarsVO;
import com.google.gson.Gson;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:db/spring-database.xml","classpath:test-config.xml"})
public class CarsDAOTest {

	@Autowired
	CarsDAO carDAO;
	
	@Test 
	public void testRetreiveAllProducts() {
		List<CarsVO> productList=new ArrayList<CarsVO>();
		productList=carDAO.retreiveAllCars();
		
		Iterator<CarsSpecVO> specSetItrtr=productList.get(0).getCarSpec().iterator();
		while(specSetItrtr.hasNext()){
			CarsSpecVO c=specSetItrtr.next();
			System.out.println(c.getCar_spec_name()+"::"+c.getCar_spec_desc());
		}
		System.out.println(productList.size());
	
		assert(productList != null);
	}

}
