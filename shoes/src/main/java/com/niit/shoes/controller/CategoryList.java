package com.niit.shoes.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sback.dao.CategoryDao;
import com.niit.sback.model.CategoryModel;

@Controller
public class CategoryList 

{
	//calling Category list in frontend and display table in category
	
	@Autowired
    CategoryDao categorys;
	
	@RequestMapping(value ="admin/categorylist")
    public ModelAndView add() {

		List<CategoryModel> list=categorys.getallCategories();
			        
	 ModelAndView mv=new ModelAndView("categorylist");
	 mv.addObject("clist", list);
		return mv;
    }

}

