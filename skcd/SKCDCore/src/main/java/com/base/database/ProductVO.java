package com.base.database;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name = "Product")
public class ProductVO implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 693260372777106385L;
	
	@Id
	private Long   porductId;
	public Long getPorductId() {
		return porductId;
	}
	public void setPorductId(Long porductId) {
		this.porductId = porductId;
	}
	private String productType;
	private String productName;
	private String productImageName;
	private String productDesc;
	
	
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductImageName() {
		return productImageName;
	}
	public void setProductImageName(String productImageName) {
		this.productImageName = productImageName;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
}