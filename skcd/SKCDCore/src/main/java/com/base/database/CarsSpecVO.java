package com.base.database;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
 
@Entity
@Table(name = "car_spec")
public class CarsSpecVO implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 693260372777106385L;
	
	@Id
	private Long   car_spec_id;

	@ManyToOne()
	@JoinColumn(name="car_id")
	private CarsVO   car;
	
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
	public CarsVO getCar() {
		return car;
	}
	public void setCar(CarsVO car) {
		this.car = car;
	}
	
	
	
}