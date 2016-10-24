package com.base.database.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.base.database.AppUser;
import com.base.database.CarsVO;
import com.base.database.ProductVO;

@Component
public class CarsDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<CarsVO> retreiveAllCars(){
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Criteria criteria=session.createCriteria(CarsVO.class);
		//criteria.a
		return criteria.list();
	}
}
