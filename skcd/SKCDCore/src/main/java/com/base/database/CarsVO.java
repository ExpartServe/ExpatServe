package com.base.database;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
 
@Entity
@Table(name = "cars")
	
public class CarsVO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 693260372777106385L;
	
	@Id
	private Long   car_id;
	private String car_image;
	private String car_name;
	private String car_description;
	
	@OneToMany(mappedBy ="car")
	private List<CarsSpecVO> carSpec;
	
	public List<CarsSpecVO> getCarSpec() {
		return carSpec;
	}
	public void setCarSpec(List<CarsSpecVO> carSpec) {
		this.carSpec = carSpec;
	}
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
	
	
	
	
}