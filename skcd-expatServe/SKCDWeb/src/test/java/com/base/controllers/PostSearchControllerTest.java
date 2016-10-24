package com.base.controllers;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.View;

import com.expatserve.base.po.PersonPO;
import com.expatserve.base.service.HousingService;

public class PostSearchControllerTest {

	@InjectMocks
	PostSearchController controller;

	@Mock
	HousingService mockHousingService;
	
	@Mock
    View mockView;

    MockMvc mockMvc;
	
	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);
		mockMvc = MockMvcBuilders.standaloneSetup(controller).setSingleView(mockView).build();

	}

	@Test
	public void showMessage() {
		List<PersonPO> personList=new ArrayList<PersonPO>();
		PersonPO personPO=new PersonPO();
		personPO.setPerson_Name("Saurabh");
		personList.add(personPO);
		
		
		Mockito.when(mockHousingService.getAllPosts()).thenReturn(personList);

		try {
			mockMvc.perform(MockMvcRequestBuilders.get("/getAllPost")).
			andExpect(MockMvcResultMatchers.status().isOk())
			 .andExpect(MockMvcResultMatchers.view().name("HouseResult"))
			 .andExpect(MockMvcResultMatchers.model().attribute("HouseDetails", "[{\"person_Name\":\"Saurabh\"}]"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
