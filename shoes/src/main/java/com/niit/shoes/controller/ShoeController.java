package com.niit.shoes.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sback.dao.ShoeDao;
import com.niit.sback.impl.CatergoryImpl;
import com.niit.sback.impl.ShoeImpl;
import com.niit.sback.impl.SupplierImpl;
import com.niit.sback.model.CategoryModel;
import com.niit.sback.model.ShoeModel;
import com.niit.sback.model.SupplierModel;


@Controller
public class ShoeController {
	@Autowired
	private ShoeImpl shoeImpl;
	@Autowired
	private CatergoryImpl categoryimpl;
	@Autowired
	private SupplierImpl supplierimpl;
	
/*	@Autowired
	
	private ShoeDao shoedao;*/
	//it will calling Adding for product inserting to database 
	
	@RequestMapping(value="/admin/shoe/submit", method=RequestMethod.POST)
	public String shoeSubmit(@RequestParam("inputShoeImage") MultipartFile file,HttpServletRequest request,HttpSession session)
	//public String shoeSubmit(HttpServletRequest request)
	{
		ShoeModel shoe=new ShoeModel();
		shoe.setId(Integer.parseInt(request.getParameter("sid")));
		shoe.setName(request.getParameter("sname"));
		shoe.setDescription(request.getParameter("sdescription"));
		shoe.setPrice(Integer.parseInt(request.getParameter("sprice")));
		shoe.setBrand(request.getParameter("sbrand"));
		
		//drop down value insert into database 
		shoe.setCategory(categoryimpl.findById(Integer.parseInt(request.getParameter("scategory"))));
		shoe.setSupplier(supplierimpl.findById(Integer.parseInt(request.getParameter("ssupplier"))));
		

		//Image upload into database 
		String path=session.getServletContext().getRealPath("/"); 
		String filename="shoe"+Math.random()+file.getOriginalFilename();  
        shoe.setImage(filename); 
        System.out.println(path+"resources/uploads/shoes/"+filename);  

        byte barr[];
		try {
			barr = file.getBytes();
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(path+"resources/uploads/shoes/"+filename));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
		} catch (IOException e) {			
			e.printStackTrace();
		}  

		//shoe.setImageType(file.getContentType());
		shoeImpl.persist(shoe);		
		return "index";
		
	}
}

	
 
	
	
	
 
