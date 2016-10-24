package com.expatserve.base.database.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.expatserve.base.database.service.po.HousePO;
import com.expatserve.base.database.service.po.PersonPO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:db/spring-database.xml","classpath:test-config.xml"})
public class HousingServiceTest {

	@Autowired
	HousingService housingService;
	
	@Test 
	public void testAddPost() {
		//Proper PersonPO object with HousePO
		
		PersonPO person=new PersonPO();
		person.setContact_nos(345678987l);
		person.setEmail("skcd@sccd.coms");
		person.setPerson_Name("chintan");
		
		List<HousePO> houseList=new ArrayList<HousePO>();
		HousePO house=new HousePO();
		house.setAddrsLine1("Poortwachter97");
		house.setAddrsLine2("1188ch");
		house.setAvailableRooms(2l);
		house.setCity("Amstelveen");
		house.setHouseDesc("new hose");
		house.setNoOfVacancies(2l);
		house.setPostCode("1188ch");
		house.setRent_amnt(new BigDecimal("100.80"));
		houseList.add(house);
		
		house=new HousePO();
		house.setAddrsLine1("Poortwachter97dsd");
		house.setAddrsLine2("1188chdsd");
		house.setAvailableRooms(2l);
		house.setCity("Amstelveensad");
		house.setHouseDesc("new hoseds");
		house.setNoOfVacancies(2l);
		house.setPostCode("1188ch");
		house.setRent_amnt(new BigDecimal("100.80"));
		houseList.add(house);
		
		person.setHouseList(houseList);
		
		
		
		boolean flag=housingService.addPost(person);
		assert(flag==true);
		
		
		
		
	}

}
