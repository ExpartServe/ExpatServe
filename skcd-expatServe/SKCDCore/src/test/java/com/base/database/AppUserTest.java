//package com.base.database;
//
//import java.io.File;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//public class AppUserTest {
//
//	@Test
//	public void testAppUser() {
//		SessionFactory sessionFactory = new Configuration().configure(new File("C:/Users/SAURABH/git/skcd/SKCDCore/src/main/resources/hibernate-cfg.xml"))
//				.buildSessionFactory();
//		Session session = sessionFactory.openSession();
//		session.beginTransaction();
// 
//		AppUser user = new AppUser("firstuser");
//		session.save(user);
// 
//		session.getTransaction().commit();
//		session.close();
//	}
//
//}
