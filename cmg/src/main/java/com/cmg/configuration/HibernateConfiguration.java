package com.cmg.configuration;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;

import com.cmg.model.FullDetails;

@Component
public class HibernateConfiguration {
	private Configuration configuration;
	private SessionFactory sessionFactory;
	private Session session;
	public Session getHibernateSession(){
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
	
	public void commitTransaction(){
		Transaction transaction = session.beginTransaction();
		transaction.commit();
	}


}
