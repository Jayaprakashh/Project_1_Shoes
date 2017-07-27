package com.niit.shoes.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

//import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sback.dao.CartDao;
import com.niit.sback.dao.CategoryDao;
import com.niit.sback.dao.ShoeDao;
import com.niit.sback.dao.SupplierDao;
import com.niit.sback.dao.UserDao;
import com.niit.sback.impl.ShoeImpl;
import com.niit.sback.model.Cart;
import com.niit.sback.model.CategoryModel;
import com.niit.sback.model.ShoeModel;
import com.niit.sback.model.SupplierModel;
import com.niit.sback.model.User;
//this command
@Controller
public class HomeController {

	@Autowired
	public UserDao user1;
	@Autowired
	public CategoryDao catsDao;
	@Autowired
	public SupplierDao supDao;
	@Autowired
	public ShoeDao shoDao;
	
	@Autowired
	public CartDao cartDao;
	 

	@RequestMapping("/")
	public ModelAndView index(){
	 	 ModelAndView mv = new ModelAndView("index");
	    	return mv;
	}
	
	
	@RequestMapping("/thanks")
	public ModelAndView thank(){
	 	 ModelAndView mv = new ModelAndView("Thanksjsp");
	    	return mv;
	}
	
	  @RequestMapping("/shoelistindividual")
			public ModelAndView productListFilter(HttpServletRequest request)
			{ 
				List<ShoeModel> clist=shoDao.getFilterShoe(Integer.valueOf(request.getParameter("id")));
				List<ShoeModel> list=shoDao.getAll();
				ModelAndView mv = new ModelAndView("shoelistindividual");	
				mv.addObject("list",clist);
				return mv;
			}
		   @ModelAttribute
			  public void addAttributes(Model model)
			  {
				  model.addAttribute("clist",catsDao.getallCategories());
			  }
	
		   //data definiation for all jsp pages
	
	 
	@RequestMapping(value="/reg")
  	public ModelAndView regpage()
  	{
  		ModelAndView m2=new ModelAndView("registration");
  		return m2;
  		
  	}
	@RequestMapping(value="/men")
  	public ModelAndView menview()
  	{
  		ModelAndView m2=new ModelAndView("MenShop");
  		return m2;
  		
  	}
   @RequestMapping(value ="/registration")
   public ModelAndView addUser(HttpServletRequest request)
   {
      	
	   int u_id=Integer.parseInt(request.getParameter("userId"));
	   
	   String u_name=request.getParameter("name");
	   
	   String u_pass=request.getParameter("password");
	   
	   String u_addr=request.getParameter("address");
	   
	   String u_mail=request.getParameter("email");
	   
	   int u_age=Integer.parseInt(request.getParameter("age"));
	   
	   int u_phone=Integer.parseInt(request.getParameter("phone"));
	   
	   String u_gen=request.getParameter("gender");
	   
	  
	   User u=new User();
	   u.setUserId(u_id);
	   u.setName(u_name);
	   u.setPassword(u_pass);
	   u.setAge(u_age);
	   u.setGender(u_gen);
	   u.setPhone(u_phone);
	   u.setEmail(u_mail);
	   u.setAddress(u_addr);
	   u.setRole("User");
	   user1.addUser(u);
	 		
		ModelAndView mv = new ModelAndView("index");
		return mv;
   }

	
	@RequestMapping("/p1-details")
	public ModelAndView details(HttpServletRequest request){
	   	
	   	int id=Integer.parseInt(request.getParameter("id"));
	    ShoeModel p=shoDao.findById(id);
			ModelAndView mv = new ModelAndView("ShoeDetails");
			List<CategoryModel> c=catsDao.getallCategories();
			mv.addObject("catalist",c);
			mv.addObject("shoe", p);
			return mv;
		 
	}
	
	@RequestMapping("/p11-details")
	public ModelAndView details3(){
	 ModelAndView mv = new ModelAndView("p11-details");
		return mv;
	}
	@RequestMapping("/p2-details")
	public ModelAndView details1(){
	 ModelAndView mv = new ModelAndView("p2-details");
		return mv;
	}
	@RequestMapping("/p3-details")
	public ModelAndView details2(){
	 ModelAndView mv = new ModelAndView("p3-details");
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView login(){
	 ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	@RequestMapping("/product")
	public ModelAndView index2(){
	//	ShoeDao cart=new ShoeImpl();
		/*cart.addShoe(new ShoeModel(101,"Adidas","BlackGray","Shoes",2750,1,"Men Wear","Supplier"));
		cart.addShoe(new ShoeModel(102,"Green ","Blue","Shoes",3000,2,"Men Wear","Supplier"));
		cart.addShoe(new ShoeModel(103,"Adidas","Pink","Shoes",4500,3,"Men Wear","Supplier"));
		cart.addShoe(new ShoeModel(104,"Green","Black","Shoes",3690,4,"Men Wear","Supplier"));*/
		
	 ModelAndView mv = new ModelAndView("productlist");
//	 mv.addObject("shoeproducts",cart.getAllShoes());
	 return mv;
	}
	
	@RequestMapping(value ="/admin/shoe_delete")
    public ModelAndView delete(HttpServletRequest request)
    {
		
		ShoeModel p=shoDao.findById(Integer.parseInt(request.getParameter("id")));
		System.out.print(p);
		shoDao.delete(p);
	    List<ShoeModel> list=shoDao.getAll();
	    ModelAndView mv = new ModelAndView("shoelistview");	
	    mv.addObject("list",list);
	   return mv;
	 
    }
	
	
	
   @RequestMapping(value="/admin/shoe_edit")
	public ModelAndView editProducts(HttpServletRequest request){	
	String id=request.getParameter("id");
	System.out.println(id);
//	shoDao.update(id);
	ModelAndView mv=new ModelAndView("shoeeditview");
	List<CategoryModel> list=catsDao.findAll();
	List<SupplierModel> slist=supDao.findAll();
	System.out.println(shoDao.findById(Integer.parseInt(id))); 
	mv.addObject("shoe",shoDao.findById(Integer.parseInt(id)));	
	mv.addObject("slist", slist);
	mv.addObject("clist", list);
	return mv;
	}
   
   @RequestMapping(value = "/admin/shoe_update", method = RequestMethod.POST)
	public  ModelAndView updateProduct(@RequestParam("file") MultipartFile file ,HttpServletRequest request) 
	{
	   
		System.out.println("in Products Controller");
		int id=Integer.parseInt(request.getParameter("id"));
		String sname=request.getParameter("name");
		String sdesc=request.getParameter("desc");
		int price=Integer.parseInt(request.getParameter("price"));
		String cid=request.getParameter("c_id");
		String sid=request.getParameter("s_id");
		CategoryModel c=catsDao.findById(Integer.parseInt(cid));
		SupplierModel s=supDao.findById(Integer.parseInt(sid));
		
		ShoeModel p=new ShoeModel();
		
		p.setCategory(c);
		p.setDescription(sdesc);
		p.setName(sname);
		p.setPrice(price);
		p.setId(id);
	    String originalfile = file.getOriginalFilename();
		p.setImage(originalfile); 
		p.setSupplier(s);
		
		shoDao.update(p);
		String filepath = request.getSession().getServletContext().getRealPath("/");
		System.out.println(filepath+originalfile);
		try {
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"resources/uploads/shoes/"+originalfile));
			fos.write(imagebyte);
			fos.close();
			} catch (IOException e) {
			e.printStackTrace();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		
	
		List<CategoryModel> list=catsDao.findAll();
		List<SupplierModel> slist=supDao.findAll();
		
	
	 
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("slist", slist);
		mv.addObject("clist", list);
		return mv;
	
}
	
  
   @RequestMapping("/userlogged")
	public String userLogged() { 
		return "redirect:/";	
	}
   @RequestMapping("/noAccessPage")
	public String noAccessPage() { 
		return "noAccessPage";	
	}
 	
   }

