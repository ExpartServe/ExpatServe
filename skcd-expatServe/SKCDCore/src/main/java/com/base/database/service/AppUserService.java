package com.base.database.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.base.database.AppUser;

@Service
public class AppUserService {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addUser(){
		Session session = sessionFactory.openSession();
		session.beginTransaction();
 
		AppUser user = new AppUser("firstusenextr");
		session.save(user);
 
		session.getTransaction().commit();
		session.close();
	}
}
