package com.expatserve.base.po;

import java.util.List;

public class PersonPO {
	private String person_Name;
	private Long   contact_no;
	private String email;
	
	
	private List<HousePO> houseList;


	public String getPerson_Name() {
		return person_Name;
	}


	public void setPerson_Name(String person_Name) {
		this.person_Name = person_Name;
	}


	


	public Long getContact_no() {
		return contact_no;
	}


	public void setContact_no(Long contact_no) {
		this.contact_no = contact_no;
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
