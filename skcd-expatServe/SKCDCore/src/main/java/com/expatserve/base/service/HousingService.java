package com.expatserve.base.service;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import javax.imageio.ImageIO;

import org.modelmapper.ModelMapper;
import org.modelmapper.TypeToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expatserve.base.dao.PersonDAO;
import com.expatserve.base.po.HousePO;
import com.expatserve.base.po.PersonPO;
import com.expatserve.base.vo.HouseVO;
import com.expatserve.base.vo.PersonVO;

@Service
public class HousingService {

	@Autowired
	PersonDAO personDAO;

	public static String IMAGEPATH = "/tmp/expat/";

	public boolean addPost(PersonPO person) {
		// convert PO to VO
		ModelMapper modelMapper = new ModelMapper();
		PersonVO personVO = modelMapper.map(person, PersonVO.class);

		for (HouseVO house : personVO.getHouseList()) {
			house.setPerson(personVO);
		}
		// personVO.setPerson_Id(1l);
		return personDAO.addPost(personVO);

		// return true;
	}

	public List<PersonPO> getAllPosts() {
		List<PersonVO> listPersonVO = personDAO.getAllPost();

		ModelMapper modelMapper = new ModelMapper();
		Type targetListType = new TypeToken<List<PersonPO>>() {
		}.getType();
		List<PersonPO> listPerson = modelMapper.map(listPersonVO, targetListType);

		int count=0;
		for (PersonPO prsn : listPerson) {
			for (HousePO house : prsn.getHouseList()) {
				house.setDisImage(listPersonVO.get(count).getHouseList().get(0).getImage());				
				
			}
			count++;
		}

		return listPerson;
	}

	
	
	
}
