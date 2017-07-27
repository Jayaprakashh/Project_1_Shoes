package com.niit.shoes.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sback.dao.CategoryDao;
import com.niit.sback.dao.SupplierDao;
import com.niit.sback.model.CategoryModel;
import com.niit.sback.model.SupplierModel;

  

@Controller
public class CategoryController {

 
     @Autowired
      CategoryDao categorys;
      @Autowired
      SupplierDao supplier;
      
      
      //Dropdown in shoelist retriving data from database from category and supplier
	 @RequestMapping(value ="/admin/add")
	    public ModelAndView add() {

			List<CategoryModel> list=categorys.getallCategories();
		   List<SupplierModel> slist=supplier.getallCategories();
			ModelAndView mv = new ModelAndView("Adding");
			//System.out.println(list.get(0).getC_name());	
	//		mv.addObject("slist", slist);
			mv.addObject("clist", list);
			mv.addObject("slist",slist);
			return mv;
	        
		// ModelAndView c1=new ModelAndView("Adding");
		//	return c1;
	    }
	 
	 //Database value going to insert data in category and supplier
	 @RequestMapping(value ="/admin/category")
	    public ModelAndView persits(HttpServletRequest request)
	    {
	        System.out.println("in controller");
		    int cid=Integer.valueOf(request.getParameter("cid"));
			String cname=request.getParameter("cn");
			System.out.println(cid+"---"+cname);
			categorys.persist(new CategoryModel(cid, cname));
			ModelAndView mv = new ModelAndView("Adding");
			return mv;
	    }
	 @RequestMapping(value ="/admin/supplier")
	    public ModelAndView supplier(HttpServletRequest request)
	    {
	        System.out.println("in controller");
		    int cid=Integer.valueOf(request.getParameter("cid"));
			String cname=request.getParameter("cn");
			System.out.println(cid+"---"+cname);
			supplier.persist(new SupplierModel(cid, cname));
			ModelAndView mv = new ModelAndView("Adding");
			return mv;
	    }
}
