package com.base.database.service;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.modelmapper.TypeToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.database.CarsVO;
import com.base.database.dao.CarsDAO;
import com.base.database.service.po.CarsPO;

@Service
public class CarService {
	
	@Autowired
	CarsDAO carDAO;
	
	public List<CarsPO> retreiveAllCars(){
		List<CarsVO> carVoList=carDAO.retreiveAllCars();
		
		List<CarsPO> carPoList=new ArrayList<CarsPO>();
		
		ModelMapper modelMapper=new ModelMapper();
		Type targetListType = new TypeToken<List<CarsPO>>() {}.getType();
		carPoList=modelMapper.map(carVoList, targetListType);
		return  carPoList;
	}
}
