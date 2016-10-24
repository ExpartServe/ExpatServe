package com.expatserve.base.vo;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.math.BigDecimal;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
@Table(name = "ES_HousePost_1")
public class HouseVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7325815238998434328L;

	@Id
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	private String house_Id;

	@ManyToOne()
	@JoinColumn(name = "Person_Id")
	private PersonVO person;
	private String hsNumber;
	private String postCode;
	private String city;
	private String houseType;
	private String furnishedState;
	private BigDecimal rent_amnt;
	private boolean inclusiveFlag;
	private String duration;
	private String image;
	private String houseDesc;
	private String gender;
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

	private String veg_NonVeg;
	private String roomType;
	private String startDate;
	private String endDate;
	private String pplAllowedMax;
	private String pplStaying;
	private String noOfRooms;
	private String houseStyle;

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

	public String getImage() {
		return image;
	}

	

	public void setImage(CommonsMultipartFile image) {
		InputStream in = new ByteArrayInputStream(image.getBytes());
		ImageInputStream is;
		String imageString = null;
		try {
			is = ImageIO.createImageInputStream(in);
			BufferedImage image_Bf = ImageIO.read(is);

			
			ByteArrayOutputStream bos = new ByteArrayOutputStream();

			try {
				ImageIO.write(image_Bf, "jpeg", bos);
				byte[] imageBytes = bos.toByteArray();

				sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
				imageString = encoder.encode(imageBytes);

				bos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.image=imageString;
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
}
