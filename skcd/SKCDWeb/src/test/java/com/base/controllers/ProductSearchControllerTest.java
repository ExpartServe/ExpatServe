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

import com.base.database.ProductVO;
import com.base.database.service.ProductService;

public class ProductSearchControllerTest {

	@InjectMocks
	ProductSearchController controller;

	@Mock
	ProductService mockProductService;

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
		List<ProductVO> productVOList=new ArrayList<ProductVO>();
		ProductVO productVO=new ProductVO();
		productVO.setProductDesc("DUMMY_DESC");
		productVO.setProductImageName("DUMMY_IMAGE");
		productVO.setProductName("DUMMY_NAME");
		productVO.setProductType("CAR");
		
		productVOList.add(productVO);
		
		Mockito.when(mockProductService.retreiveAllProducts()).thenReturn(productVOList);

		try {
			mockMvc.perform(MockMvcRequestBuilders.get("/searchProduct")).
			andExpect(MockMvcResultMatchers.status().isOk())
			 .andExpect(MockMvcResultMatchers.view().name("productSearch"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
