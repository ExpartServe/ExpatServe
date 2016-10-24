package com.expatserve.base.database.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.expatserve.base.database.PersonVO;

@Service
public class PersonDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	//@Transactional
	public boolean addPost(PersonVO personVO) {
		try{
			Session session = sessionFactory.getCurrentSession();
			session.save(personVO);
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			
		}
		return false;
	}
}
