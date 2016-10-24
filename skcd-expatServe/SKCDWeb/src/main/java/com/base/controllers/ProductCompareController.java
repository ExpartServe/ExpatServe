package com.base.controllers;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.base.database.ComparePO;
import com.base.database.ProductVO;
import com.base.database.service.ProductService;
import com.google.gson.Gson;
 
@Controller
public class ProductCompareController {
	
	@Autowired
	private ProductService productService;
 
	@RequestMapping(value="/compareProduct",method = RequestMethod.GET)
	public ModelAndView compareProduct(@RequestParam("carComparisonIds") String json) {
//		List<ProductVO>  listProduct=productService.retreiveAllProducts();
//		
//		Gson gson=new Gson();
//		String jsonProductList = gson.toJson(listProduct );
		
		
		List<ProductVO>  listProduct=productService.retreiveAllProducts();
		
		Gson gson=new Gson();
		String jsonProductList = gson.toJson(listProduct );
		System.out.println("jsonCartList: " + jsonProductList);
		
		
		System.out.println("jsonCartList: " + json);
		String compJson = this.tempGetComparison(listProduct,json);
//		
		ModelAndView mv = new ModelAndView("compareProduct");
		mv.addObject("compJson", compJson);
		return mv;
	}
	
	private String tempGetComparison(List<ProductVO> listProduct,String input){
		String json = new String("");
		ComparePO comparePO = null;
		Map<String,String> features = new HashMap<String,String>();
		List<ComparePO> comparePOs = new ArrayList<ComparePO>();
		String arr[] = input.split(",");
		for(String id : arr){
			for(ProductVO productVO : listProduct){
				if(productVO.getPorductId().equals(new Long(id))){
					comparePO = new ComparePO();
					comparePO.setCarName(productVO.getProductName());
					comparePO.setId(productVO.getPorductId());
					features.put("engineType", "PETROL");
					features.put("airBag", "YES");
					features.put("airBag", "YES");
					comparePO.setFeatures(features);
					comparePOs.add(comparePO);
				}
			}
		}
		json = new Gson().toJson(comparePOs);
		
		System.out.println("comparison----"+json);
		return json;
	}
	
}

