package net.aish.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.aish.onlineshopping.exception.ProductNotFoundException;
import net.aish.onlineshoppingbackend.dao.CategoryDAO;
import net.aish.onlineshoppingbackend.dao.ProductDAO;
import net.aish.onlineshoppingbackend.dto.Category;
import net.aish.onlineshoppingbackend.dto.Product;

@Controller
public class PageController {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	
	
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView index() {		
		ModelAndView mv = new ModelAndView("page");	
		mv.addObject("title","Home");
		
		mv.addObject("categories", categoryDAO.list());
		
		
		mv.addObject("userClickHome",true);
		return mv;
	} 
	
	
	@RequestMapping(value="/show/all/products")
	public ModelAndView showAllProducts() {		
		ModelAndView mv = new ModelAndView("page");	
		mv.addObject("title","All Products");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("userClickAllProducts",true);
		return mv;
	}
	
	
	@RequestMapping(value="/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id")int id) {		
		ModelAndView mv = new ModelAndView("page");	
		
		//categoryDAO to fetch the single category
		Category category=null;
		category= categoryDAO.get(id);
		
		mv.addObject("title",category.getName());
		mv.addObject("categories", categoryDAO.list());
		
		mv.addObject("category", category);
		mv.addObject("userClickCategoryProducts",true);
		return mv;
	}
	
	
	/*@RequestMapping(value="/category")
	public ModelAndView category() {		
		ModelAndView mv = new ModelAndView("page");	
		mv.addObject("title","Category");
		mv.addObject("userClickCategory",true);
		return mv;
	}*/
	
	@RequestMapping(value="/register")
	public ModelAndView register() {		
		ModelAndView mv = new ModelAndView("page");	
		mv.addObject("title","Register");
		mv.addObject("userClickRegister",true);
		return mv;
	}
	
	@RequestMapping(value="/login")
	public ModelAndView login() {		
		ModelAndView mv = new ModelAndView("page");	
		mv.addObject("title","Login");
		mv.addObject("userClickLogin",true);
		return mv;
	}
	
	@RequestMapping(value="/about")
	public ModelAndView about() {		
		ModelAndView mv = new ModelAndView("page");	
		mv.addObject("title","About");
		mv.addObject("userClickAbout",true);
		return mv;
	}
	
	/*
	 * Viewing a single product
	 * */
	
	@RequestMapping(value = "/show/{id}/product") 
	public ModelAndView showSingleProduct(@PathVariable int id) throws ProductNotFoundException 
	{
		
		ModelAndView mv = new ModelAndView("page");
		
		Product product = productDAO.get(id);
		
		if(product == null) throw new ProductNotFoundException();
		
		// update the view count
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		//---------------------------
		
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		
		mv.addObject("userClickShowProduct", true);
		
		
		return mv;
		
	}
	
	
}
