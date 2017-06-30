package com.niit.shoes.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sback.dao.CartDao;
import com.niit.sback.dao.ShoeDao;
import com.niit.sback.model.Cart;
import com.niit.sback.model.ShoeModel;

@Controller
public class cartController {
	@Autowired
	ShoeDao sdao;
	
	@Autowired
	CartDao cdao;
	
	@RequestMapping("/viewCart")
	public ModelAndView viewCart(){
		
		ModelAndView mv=new ModelAndView("viewCart");
		List<Cart> cartList=cdao.getAllCarts();
		
		mv.addObject("cartlist", cartList);
		return mv;
	}
	
	@RequestMapping(value="/addCart",method = RequestMethod.POST)
	public ModelAndView addCart(HttpServletRequest request){
		int id=Integer.valueOf(request.getParameter("id"));
		int q=Integer.valueOf(request.getParameter("q"));
		
		ShoeModel p=sdao.findById(id);
		int price=p.getPrice();
		Cart c=new Cart();
	    c.setPrice(price); 
		c.setQuantity(q);
		 
		c.setShoeId(p);
		c.setCartId(1);
		
		List<Cart> list=cdao.checkExistance(id);
		int count=list.size();
		System.out.println("No of times: "+count);
		if(count==0)
		{
		
		cdao.save(c);
		}
		else
		{

        Cart cart=cdao.findById(list.get(0).getCartId());
        double ex=cart.getQuantity();
        System.out.println("-----------Existance Count ="+ex+"\n current Count = "+q+"------------\n---Total =-"+(ex+q));
        double tot=ex+q;
        cart.setQuantity(tot);
        cdao.update(cart);
		}
		
		System.out.println(c);
		
		ModelAndView mv=new ModelAndView("viewCart");
		List<Cart> cartList=cdao.getAllCarts();
		
		mv.addObject("cartlist", cartList);
		return mv;
		
	}
	
	@RequestMapping("/customerDetails")
	public ModelAndView customer(HttpServletRequest request)
	{
		double tot=Double.parseDouble(request.getParameter("tot"));
		
		ModelAndView mv=new ModelAndView("customerregistration");
		mv.addObject("tot", tot);
		return mv;
	}
   
   @RequestMapping("/invoice")
	public ModelAndView invoice(HttpServletRequest request)
	{
		String name=request.getParameter("name");
		String add=request.getParameter("add");
		String phone=request.getParameter("contact_no");
		String email=request.getParameter("email");
		String tot=request.getParameter("tot");
		ModelAndView mv=new ModelAndView("invoice");
		mv.addObject("name", name);
		mv.addObject("add", add);
		mv.addObject("phone", phone);
		mv.addObject("email", email);
		mv.addObject("tot", tot);
		return mv;
	}

   
   @RequestMapping("/cart_delete")
	public ModelAndView deleteCart(HttpServletRequest request)
	{
		int cid=Integer.valueOf(request.getParameter("id"));
		Cart c=cdao.getId(cid);
		cdao.deleteById(cid);
		
		ModelAndView mv=new ModelAndView("viewCart");
		List<Cart> cartList=cdao.getAllCarts();
		
		mv.addObject("cartlist", cartList);
		return mv;
	}
}
