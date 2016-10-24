package com.expatserve.base.database;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.engine.Cascade;

@Entity
@Table(name = "ES_Person")
public class PersonVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7325815238998434328L;

	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name="system-uuid", strategy = "uuid")
	private String   person_Id;
	private String person_Name;
	private Long contact_no;
	private String email;
	
	@OneToMany(mappedBy ="person",cascade={CascadeType.ALL})
	private List<HouseVO> houseList;
	
	
	public String getPerson_Id() {
		return person_Id;
	}
	public void setPerson_Id(String person_Id) {
		this.person_Id = person_Id;
	}
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
	public List<HouseVO> getHouseList() {
		return houseList;
	}
	public void setHouseList(List<HouseVO> houseList) {
		this.houseList = houseList;
	} 	
	
}
