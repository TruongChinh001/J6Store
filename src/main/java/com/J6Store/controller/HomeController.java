package com.J6Store.controller;

import java.util.List;

import com.J6Store.entity.Category;
import com.J6Store.entity.Product;
import com.J6Store.service.CategoryService;
import com.J6Store.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping({"/", "/home/index"})
	public String home(Model model) {
		List<Category> listCategories = categoryService.getTop3Categories();
		model.addAttribute("listCategories", listCategories);
		List<Product> listProducts = productService.getTop3Prodcuts();
		model.addAttribute("listProducts", listProducts);
		System.out.println(listCategories);
		return "index";
	}
	
	@RequestMapping({"/admin", "/admin/home/index"})
	public String admin() {
		return "redirect:/assets/admin/index.html";
	}
	
}
