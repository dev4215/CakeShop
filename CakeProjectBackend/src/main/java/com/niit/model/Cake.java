package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cakeinfo")
public class Cake 
{
	@Id
  private int cakeId;
  private String CakeName;
  private String cakeWeight;
  private String cakeCategory;
  private int cakePrice;
public int getCakeId() {
	return cakeId;
}
public void setCakeId(int cakeId) {
	this.cakeId = cakeId;
}
public String getCakeName() {
	return CakeName;
}
public void setCakeName(String cakeName) {
	CakeName = cakeName;
}
public String getCakeWeight() {
	return cakeWeight;
}
public void setCakeWeight(String cakeWeight) {
	this.cakeWeight = cakeWeight;
}
public String getCakeCategory() {
	return cakeCategory;
}
public void setCakeCategory(String cakeCategory) {
	this.cakeCategory = cakeCategory;
}
public int getCakePrice() {
	return cakePrice;
}
public void setCakePrice(int cakePrice) {
	this.cakePrice = cakePrice;
}
public Cake(int cakeId, String cakeName, String cakeWeight, String cakeCategory, int cakePrice) {
	super();
	this.cakeId = cakeId;
	CakeName = cakeName;
	this.cakeWeight = cakeWeight;
	this.cakeCategory = cakeCategory;
	this.cakePrice = cakePrice;
}
public Cake() {
	super();
	// TODO Auto-generated constructor stub
}


}
