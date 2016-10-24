package com.expatserve.base.database;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "ES_HousePost")
public class HouseVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7325815238998434328L;

	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name="system-uuid", strategy = "uuid")
	private String house_Id;
	
	@ManyToOne()
	@JoinColumn(name="Person_Id")
	private PersonVO person;
	private String addrsLine1;
	private String addrsLine2;
	private String postCode;
	private String city;
	private String houseDesc;
	private Long noOfVacancies;
	private Long availableRooms;
	private BigDecimal rent_amnt;
	
	
	
	public PersonVO getPerson() {
		return person;
	}
	public void setPerson(PersonVO person) {
		this.person = person;
	}
	
	
	public String getHouse_Id() {
		return house_Id;
	}
	public void setHouse_Id(String house_Id) {
		this.house_Id = house_Id;
	}
	public String getAddrsLine1() {
		return addrsLine1;
	}
	public void setAddrsLine1(String addrsLine1) {
		this.addrsLine1 = addrsLine1;
	}
	public String getAddrsLine2() {
		return addrsLine2;
	}
	public void setAddrsLine2(String addrsLine2) {
		this.addrsLine2 = addrsLine2;
	}
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHouseDesc() {
		return houseDesc;
	}
	public void setHouseDesc(String houseDesc) {
		this.houseDesc = houseDesc;
	}
	public Long getNoOfVacancies() {
		return noOfVacancies;
	}
	public void setNoOfVacancies(Long noOfVacancies) {
		this.noOfVacancies = noOfVacancies;
	}
	
	public Long getAvailableRooms() {
		return availableRooms;
	}
	public void setAvailableRooms(Long availableRooms) {
		this.availableRooms = availableRooms;
	}
	public BigDecimal getRent_amnt() {
		return rent_amnt;
	}
	public void setRent_amnt(BigDecimal rent_amnt) {
		this.rent_amnt = rent_amnt;
	}
	
}
