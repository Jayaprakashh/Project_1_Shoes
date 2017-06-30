package com.niit.sback.impl;

import java.util.List;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.springframework.stereotype.Repository;

import com.niit.sback.dao.ShoeDao;
import com.niit.sback.model.ShoeModel;
 

@Repository
public class ShoeImpl implements ShoeDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void persist(ShoeModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.save(entity);
		s.getTransaction().commit();
		s.close();
		
	}

	public void update(ShoeModel entity) {
		// TODO Auto-generated method stub
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.update(entity);
		s.getTransaction().commit();
		s.close(); 
		
	}

	public ShoeModel findById(int id) {

		ShoeModel c=(ShoeModel)sessionFactory.openSession().get(ShoeModel.class, id);
		return c;
		 
	}

	public List<ShoeModel> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		List<ShoeModel> list=s.createQuery("from ShoeModel").list();
		s.getTransaction().commit();
		s.close();
		return list;
	}

	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	public void delete(ShoeModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.delete(entity);
		s.getTransaction().commit();
		s.close();sessionFactory.openSession().delete(entity);
	}


//@Override

	public List<ShoeModel> getAll() {

		Session sf =sessionFactory.openSession();
		sf.beginTransaction();
		Query query = sf.createQuery("from ShoeModel");
		List<ShoeModel> list=query.list();
		System.out.println(list);
		sf.getTransaction().commit();
		return list;
		 
	}

	public List<ShoeModel> getAllShoeDetails() {
		/*// TODO Auto-generated method stub
		Session sf =sessionFactory.openSession();
		sf.beginTransaction();
		Query query = sf.createQuery("from ShoeModel");
		List<ShoeModel> list=query.list();
		System.out.println(list);
		sf.getTransaction().commit();
		return list;*/
		
		   Session session=sessionFactory.openSession();
	        session.beginTransaction();
	        
	    List<ShoeModel> product=sessionFactory.openSession().createCriteria(ShoeModel.class).list();
	        //List<ProductsModel> product=sessionFactory.openSession().createCriteria(ProductsModel.class).list();
	        
	        session.getTransaction().commit();
	        
	        return product;
	
	}

	public List<ShoeModel> getFilterShoe(int cid) {
         Session s=sessionFactory.openSession();
		
		List<ShoeModel> results =s.createQuery("from ShoeModel where CATEGORY_ID="+cid).list();
		s.close();
		
		return results;
	}

 

	 }
