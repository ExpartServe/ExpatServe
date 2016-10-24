package com.base.database.service.po;

import java.util.List;

public class CarsPO {
	private Long   car_id;
	private String car_image;
	private String car_name;
	private String car_description;
	private List<CarsSpecPO> carSpec;
	
	
	
	
	public Long getCar_id() {
		return car_id;
	}
	public void setCar_id(Long car_id) {
		this.car_id = car_id;
	}
	public String getCar_image() {
		return car_image;
	}
	public void setCar_image(String car_image) {
		this.car_image = car_image;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getCar_description() {
		return car_description;
	}
	public void setCar_description(String car_description) {
		this.car_description = car_description;
	}
	public List<CarsSpecPO> getCarSpec() {
		return carSpec;
	}
	public void setCarSpec(List<CarsSpecPO> carSpec) {
		this.carSpec = carSpec;
	}
	
}
