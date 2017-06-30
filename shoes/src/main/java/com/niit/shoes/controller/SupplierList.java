package com.niit.shoes.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sback.dao.SupplierDao;
import com.niit.sback.model.SupplierModel;

@Controller
public class SupplierList {
	
	//calling Supplier list in frontend and display table in supplier
	
	 @Autowired
     SupplierDao supplier;
		 
		@RequestMapping(value ="admin/supplierlist")
	    public ModelAndView add() {
			
			   List<SupplierModel> slist=supplier.getallCategories();
	        
		 ModelAndView c1=new ModelAndView("supplierlist");
		 c1.addObject("slist",slist);
			return c1;
	    }

}
