package com.niit.sback.dao;

import java.util.List;

import com.niit.sback.model.CategoryModel;
import com.niit.sback.model.SupplierModel;

public interface SupplierDao 
{
	public void persist(SupplierModel entity);

	 public void update(SupplierModel entity);
	 
	 public  SupplierModel findById(int id);

	 public List<SupplierModel> findAll();

	 public void deleteAll();
	 
    public void delete(SupplierModel entity);
    
    public List<SupplierModel> getallCategories();

}
