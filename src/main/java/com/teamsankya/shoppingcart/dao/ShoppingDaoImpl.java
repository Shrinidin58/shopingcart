package com.teamsankya.shoppingcart.dao;

import java.util.List;

import javax.transaction.Transaction;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.teamsankya.shoppingcart.dto.Details;



public class ShoppingDaoImpl implements ShoppingDao {
	
	
	
	final static Logger LOGGER = Logger.getLogger(ShoppingDaoImpl.class);
	 
	/*@Autowired
	private SessionFactory sessionFactory;
	
	
	public List<Details> search(String name) {
		System.out.println("inside search");
	    LOGGER.info("inside search method");
	    
		LOGGER.info("After configure");
			
		LOGGER.info("after session");
		List<Details> res;

		try {
        
		@SuppressWarnings("deprecation")
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Details.class);
		criteria.add(Restrictions.like("fullName", ("%"+name+"%")));
		 res= criteria.list();
		
		}catch(HibernateException e) {
			@SuppressWarnings("deprecation")
			Criteria criteria = sessionFactory.openSession().createCriteria(Details.class);
			criteria.add(Restrictions.like("fullName", ("%"+name+"%")));
			 res= criteria.list();
		}
		//transaction.commit();
		
		String hql = "From DetailsId where fullName like "+name;
		Query query = sessionFactory.openSession().createQuery(hql);
		List<Details> res = query.list();
		
		return res;
	}*/
	
	   Configuration configuration= new Configuration();
	   SessionFactory factory=configuration.configure().buildSessionFactory();
	   public List<Details> findProduct(String name){
		List<Details> res1;
		System.out.println("inside find");
		Session session=factory.openSession();
		session.beginTransaction();
		Criteria criteria = factory.openSession().createCriteria(Details.class);
		criteria.add(Restrictions.like("fullName", ("%"+name+"%")));
		res1= criteria.list();
		session.getTransaction().commit();
		session.close();
		System.out.println(res1);
		return res1;
	}
}

