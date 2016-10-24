package com.expatserve.base.database.service.po;

import java.util.List;

public class PersonPO {
	private String person_Name;
	private Long contact_nos;
	private String email;
	
	
	private List<HousePO> houseList;


	public String getPerson_Name() {
		return person_Name;
	}


	public void setPerson_Name(String person_Name) {
		this.person_Name = person_Name;
	}


	public Long getContact_nos() {
		return contact_nos;
	}


	public void setContact_nos(Long contact_nos) {
		this.contact_nos = contact_nos;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public List<HousePO> getHouseList() {
		return houseList;
	}


	public void setHouseList(List<HousePO> houseList) {
		this.houseList = houseList;
	}
	
	
}
