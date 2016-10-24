package com.expatserve.base.po;

import java.math.BigDecimal;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class HousePO {

	private String hsNumber;
	private String postCode;
	private String city;
	private String houseType;
	private String furnishedState;
	private BigDecimal   rent_amnt;
	private boolean inclusiveFlag;
	private String  duration;
	private CommonsMultipartFile image;
	private String disImage;
	private String houseDesc;
	private String gender;
	private String veg_NonVeg;
	private String roomType;
	private String startDate;
	private String endDate;
	private String pplAllowedMax;
	private String pplStaying;
	private String noOfRooms;
	private String houseStyle;
	
	
	
	
	
	
	
	
	
	
	
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getVeg_NonVeg() {
		return veg_NonVeg;
	}
	public void setVeg_NonVeg(String veg_NonVeg) {
		this.veg_NonVeg = veg_NonVeg;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getPplAllowedMax() {
		return pplAllowedMax;
	}
	public void setPplAllowedMax(String pplAllowedMax) {
		this.pplAllowedMax = pplAllowedMax;
	}
	public String getPplStaying() {
		return pplStaying;
	}
	public void setPplStaying(String pplStaying) {
		this.pplStaying = pplStaying;
	}
	public String getNoOfRooms() {
		return noOfRooms;
	}
	public void setNoOfRooms(String noOfRooms) {
		this.noOfRooms = noOfRooms;
	}
	public String getHouseStyle() {
		return houseStyle;
	}
	public void setHouseStyle(String houseStyle) {
		this.houseStyle = houseStyle;
	}
	public String getHsNumber() {
		return hsNumber;
	}
	public void setHsNumber(String hsNumber) {
		this.hsNumber = hsNumber;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public String getFurnishedState() {
		return furnishedState;
	}
	public void setFurnishedState(String furnishedState) {
		this.furnishedState = furnishedState;
	}
	public boolean isInclusiveFlag() {
		return inclusiveFlag;
	}
	public void setInclusiveFlag(boolean inclusiveFlag) {
		this.inclusiveFlag = inclusiveFlag;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
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
	public BigDecimal getRent_amnt() {
		return rent_amnt;
	}
	public void setRent_amnt(BigDecimal rent_amnt) {
		this.rent_amnt = rent_amnt;
	}
	public CommonsMultipartFile getImage() {
		return image;
	}
	public void setImage(CommonsMultipartFile image) {
		this.image = image;
	}
	
	public String getDisImage() {
		return disImage;
	}
	public void setDisImage(String disImage) {
		this.disImage = disImage;
	}

	
	
}
