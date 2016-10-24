package com.base.database;

import java.util.HashMap;
import java.util.Map;

public class ComparePO {
 private long id;
 private String carName;
 private Map<String,String> features = new HashMap<String,String>(0);
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getCarName() {
	return carName;
}
public void setCarName(String carName) {
	this.carName = carName;
}
public Map<String, String> getFeatures() {
	return features;
}
public void setFeatures(Map<String, String> features) {
	this.features = features;
} 
}
