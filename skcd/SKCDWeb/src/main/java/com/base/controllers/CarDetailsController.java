package com.base.controllers;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.base.database.ProductVO;
import com.base.database.service.CarService;
import com.base.database.service.ProductService;
import com.base.database.service.po.CarsPO;
import com.google.gson.Gson;
 
@Controller
public class CarDetailsController {
	String message = "Welcome to Spring MVC!";
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private ProductService productService;
	
 
	@RequestMapping("/allCars")
	
	public ModelAndView showMessage() {
//		System.out.println("in controller");
//		List<CarsPO>  listProduct=carService.retreiveAllCars();
//		
//		Gson gson=new Gson();
//		String jsonProductList = gson.toJson(listProduct );
//		System.out.println("jsonCartList: " + jsonProductList);
//		
//		ModelAndView mv = new ModelAndView("allCars");
//		mv.addObject("message", message);
//		mv.addObject("productDetails", jsonProductList);
//		return mv;
		
		
		
		
		System.out.println("in controller");
		List<ProductVO>  listProduct=productService.retreiveAllProducts();
		
		Gson gson=new Gson();
		String jsonProductList = gson.toJson(listProduct );
		System.out.println("jsonCartList: " + jsonProductList);
		
		ModelAndView mv = new ModelAndView("allCars");
		mv.addObject("message", message);
		mv.addObject("productDetails", jsonProductList);
		return mv;
	}

}