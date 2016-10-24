package com.base.controllers;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.View;

import com.base.database.service.CarService;

public class CarDetailsControllerTest {

	@InjectMocks
	CarDetailsController controller;

	@Mock
	CarService carService;

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
		
		
		//Mockito.when(carService.retreiveAllCars()).thenReturn(productVOList);

		try {
			mockMvc.perform(MockMvcRequestBuilders.get("/allCars")).
			andExpect(MockMvcResultMatchers.status().isOk())
			 .andExpect(MockMvcResultMatchers.view().name("productSearch"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
