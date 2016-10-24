package com.base.database.service.po;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.base.database.CarsVO;

public class CarsSpecPO {
	private Long   car_spec_id;
	private String car_spec_catg;
	private String car_spec_name;
	private String car_spec_desc;
	public Long getCar_spec_id() {
		return car_spec_id;
	}
	public void setCar_spec_id(Long car_spec_id) {
		this.car_spec_id = car_spec_id;
	}
	public String getCar_spec_catg() {
		return car_spec_catg;
	}
	public void setCar_spec_catg(String car_spec_catg) {
		this.car_spec_catg = car_spec_catg;
	}
	public String getCar_spec_name() {
		return car_spec_name;
	}
	public void setCar_spec_name(String car_spec_name) {
		this.car_spec_name = car_spec_name;
	}
	public String getCar_spec_desc() {
		return car_spec_desc;
	}
	public void setCar_spec_desc(String car_spec_desc) {
		this.car_spec_desc = car_spec_desc;
	}
	
	
	
	
}
