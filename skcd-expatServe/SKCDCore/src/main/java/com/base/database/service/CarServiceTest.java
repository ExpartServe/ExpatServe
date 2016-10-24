package com.base.database.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.base.database.service.po.CarsPO;
import com.base.database.service.po.CarsSpecPO;
import com.google.gson.Gson;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:db/spring-database.xml","classpath:test-config.xml"})
public class CarServiceTest {
	
	@Autowired
	CarService carService; 

	@Test
	public void testRetreiveAllCars() {
		List<CarsPO> listCarPO=carService.retreiveAllCars();
		CarsSpecPO  carsSpecPO =listCarPO.get(0).getCarSpec().get(0);

		
		Gson gson=new Gson();
		String jsonProductList = gson.toJson(listCarPO);
		System.out.println("jsonCartList: " + jsonProductList);
		
		assert(listCarPO != null);
	}

}
