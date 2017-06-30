package com.niit.sback.dao;

import java.util.List;

import com.niit.sback.model.Cart;
import com.niit.sback.model.ShoeModel;

public interface CartDao {

	 //save
	public void save(Cart cart);
   //read
		public Cart getId(int id);
		//update
		public void update(Cart cart);
		//deleted
		public void deleteById(int id);
		//Get All
		public List<Cart> getAllCarts();
      
	   public void delete(Cart cartId);
		
	   public  Cart findById(int id);
	   
	   public List<Cart> checkExistance(int id);
}
