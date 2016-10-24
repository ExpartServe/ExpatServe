package com.expatserve.base.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expatserve.base.vo.PersonVO;

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

	public List<PersonVO> getAllPost() {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria=session.createCriteria(PersonVO.class);
		criteria.addOrder(Order.desc("created_Dt"));
		return criteria.list();
	}
}
