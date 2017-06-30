package com.niit.shoes.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.niit.sback.dao.CategoryDao;
import com.niit.sback.dao.SupplierDao;



@RestController
public class ListRestController 
{
	@Autowired
	private CategoryDao category;
	
	@RequestMapping(value="/categorys", method=RequestMethod.GET)
	public @ResponseBody String getAll(){
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String json = gson.toJson(category.findAll());
    
        return json;
	}
	
	@Autowired
	private SupplierDao supplier;
	
	@RequestMapping(value="/suppliers", method=RequestMethod.GET)
	public @ResponseBody String gettAll(){
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String json = gson.toJson(supplier.findAll());
    
        return json;
	}
    
}
