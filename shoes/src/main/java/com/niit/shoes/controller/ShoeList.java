package com.niit.shoes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sback.dao.ShoeDao;
import com.niit.sback.model.ShoeModel;
 
 

@Controller
public class ShoeList {
	
	 @Autowired
	 ShoeDao shoesdao;
	@RequestMapping(value ="admin/shoelistview")
    public ModelAndView getlist() 
   {
		ModelAndView mv=new ModelAndView("shoelistview");
		List<ShoeModel>list=shoesdao.getAll();
		mv.addObject("list", list);
	return mv;
	

}
}
