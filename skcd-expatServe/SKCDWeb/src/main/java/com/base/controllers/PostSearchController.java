package com.base.controllers;
 
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.expatserve.base.po.HousePO;
import com.expatserve.base.po.PersonPO;
import com.expatserve.base.service.HousingService;
import com.google.gson.Gson;
 
@Controller
public class PostSearchController {
	String message = "Welcome to Spring MVC!";
	
	@Autowired
	private HousingService housingService;
 
	@RequestMapping("/getAllPost")
	public @ResponseBody String showMessage() {
		System.out.println("in controller");
		List<PersonPO>  listPerson=housingService.getAllPosts();
		
		Gson gson=new Gson();
		String jsonProductList = gson.toJson(listPerson);
		System.out.println("jsonCartList: " + jsonProductList);
		
		/*ModelAndView mv = new ModelAndView("HouseResult");
		mv.addObject("message", message);
		mv.addObject("HouseDetails", jsonProductList);
		return mv;*/
		return jsonProductList;
	}
	
	@RequestMapping("/ViewPostPage")
	public ModelAndView showPostPage() {
		
		ModelAndView mv = new ModelAndView("HouseResult");
		mv.addObject("message", message);
		return mv;
	}
	
	
	
	@RequestMapping("/AddPostPage")
	public ModelAndView getPostAdd() {
		ModelAndView mv = new ModelAndView("postAdPage");
		PersonPO personPO=new PersonPO();
		
		HousePO housePO=new HousePO();
		List<HousePO> houseList=new ArrayList<HousePO>();
		houseList.add(housePO);
		personPO.setHouseList(houseList);
		
		mv.addObject("addPostForm", personPO);
		return mv;
	}
	
	@RequestMapping(value = "/postAdd", method = RequestMethod.POST)
	public ModelAndView postAdd(@ModelAttribute("addPostForm")PersonPO person, 
			   ModelMap model) {
		
		boolean flag=housingService.addPost(person);
		ModelAndView mv = new ModelAndView("HouseResult");
		mv.addObject("msg", "POSt Added successfully");
		return mv;
	}
}