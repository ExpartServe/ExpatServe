package com.expatserve.base.database.service;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expatserve.base.database.HouseVO;
import com.expatserve.base.database.PersonVO;
import com.expatserve.base.database.dao.PersonDAO;
import com.expatserve.base.database.service.po.PersonPO;

@Service
public class HousingService {
	
	@Autowired
	PersonDAO personDAO;
	
	public boolean addPost(PersonPO person){
		//convert PO to VO
		ModelMapper modelMapper = new ModelMapper();
		PersonVO personVO = modelMapper.map(person, PersonVO.class);
		
		
		for(HouseVO house:personVO.getHouseList()){
			house.setPerson(personVO);
		}
		//personVO.setPerson_Id(1l);
		return personDAO.addPost(personVO);
		
		//return true;
	}
	
	
}
