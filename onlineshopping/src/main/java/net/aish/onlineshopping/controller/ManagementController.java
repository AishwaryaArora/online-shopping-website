package net.aish.onlineshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.aish.onlineshoppingbackend.dao.CategoryDAO;
import net.aish.onlineshoppingbackend.dao.ProductDAO;
import net.aish.onlineshoppingbackend.dto.Category;
import net.aish.onlineshoppingbackend.dto.Product;

@Controller
@RequestMapping("/manage")
public class ManagementController {
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	

	@RequestMapping(value="/products", method=RequestMethod.GET) 
	public ModelAndView showManageProducts(@RequestParam(name="operation", required=false) String operation) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickManageProducts", true);
		mv.addObject("title", "Manage Products");
		Product nProduct = new Product();
		// set few of the fields
		nProduct.setSupplierId(1);
		nProduct.setActive(true);		
		mv.addObject("product", nProduct);
		if(operation!=null) {
			if(operation.equals("product")) {
				mv.addObject("message", "Product Submitted Successfully!");
			}
			//else if(operation.equals("category")) {
			//	mv.addObject("message", "Category Submitted Successfully!");
			//}
		}
		return mv;
}
	
	
	//handling product submission
		@RequestMapping(value="/products", method=RequestMethod.POST)
		public String handleProductSubmission(@ModelAttribute("product") Product mProduct){
			
			//create a new product record
			
			productDAO.add(mProduct);
			
			
			return "redirect:/manage/products?operation=product";
			
		}
	
	
	
	// returning categories for all the request mapping 
		@ModelAttribute("categories")
		public List<Category> getCategories() {
			return categoryDAO.list();
		}
		

		/*@ModelAttribute("category")
		public Category getCategory() {
			return new Category();
		}*/
	
	
	
}