package com.niit.sback.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.sback.dao.SupplierDao;
import com.niit.sback.model.CategoryModel;
import com.niit.sback.model.SupplierModel;

@Repository
public class SupplierImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void persist(SupplierModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.save(entity);
		s.getTransaction().commit();
		s.close();
		
	}

	public void update(SupplierModel entity) {
		// TODO Auto-generated method stub

	}

	public SupplierModel findById(int id) {
		SupplierModel c=(SupplierModel)sessionFactory.openSession().get(SupplierModel.class, id);
		return c;
	}

	public List<SupplierModel> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		List<SupplierModel> list=s.createQuery("from SupplierModel").list();
		s.getTransaction().commit();
		s.close();
		return list;
	}

	public void deleteAll() {
		// TODO Auto-generated method stub

	}

	public void delete(SupplierModel entity) {
		// TODO Auto-generated method stub

	}

	public List<SupplierModel> getallCategories() {
		// TODO Auto-generated method stub
		
		Session sf =sessionFactory.openSession();
		sf.beginTransaction();
		Query query = sf.createQuery("from SupplierModel");
		List<SupplierModel> slist=query.list();
		System.out.println(slist);
		sf.getTransaction().commit();
		return slist;
	}

	 

}
