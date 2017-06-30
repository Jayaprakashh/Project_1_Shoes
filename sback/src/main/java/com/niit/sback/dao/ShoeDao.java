package com.niit.sback.dao;

import java.util.List;
import com.niit.sback.model.*;

public interface ShoeDao {

	public void persist(ShoeModel entity);

	 public void update(ShoeModel entity);
	 
	 public  ShoeModel findById(int id);

	 public List<ShoeModel> findAll();

	 public void deleteAll();
	 
     public void delete(ShoeModel entity);
     
     public List<ShoeModel> getAll();
     
    // List<ShoeModel> getAllShoeDetails();
     public List<ShoeModel> getFilterShoe(int cid);
     
    
      
     

}
