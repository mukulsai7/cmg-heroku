package com.cmg.configuration;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;

import com.cmg.model.FullDetails;

@Component
public class HibernateConfiguration {
	private static Configuration configuration;
	private static SessionFactory sessionFactory;
	private static Session session;
	
	public static Session getHibernateSession(){
		try{
			configuration = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(FullDetails.class);
			sessionFactory = configuration.buildSessionFactory();
			session = sessionFactory.openSession();
			return session;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public static void commitTransaction(){
		Transaction transaction = session.beginTransaction();
		transaction.commit();
	}
	
}
