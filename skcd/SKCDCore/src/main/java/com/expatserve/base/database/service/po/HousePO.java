package com.expatserve.base.database.service.po;

import java.math.BigDecimal;

public class HousePO {

	private String addrsLine1;
	private String addrsLine2;
	private String postCode;
	private String city;
	private String houseDesc;
	private Long   noOfVacancies;
	private Long availableRooms;
	private BigDecimal   rent_amnt;
	
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
