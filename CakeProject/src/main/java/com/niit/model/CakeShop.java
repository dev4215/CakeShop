package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CakeShops")
public class CakeShop
{
	
	@Id
	private int shopId;
	private String shopName;
	private String address;
	private String phoneNo;
	private String registeredDate;
	private String managerName;
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getRegisteredDate() {
		return registeredDate;
	}
	public void setRegisteredDate(String registeredDate) {
		this.registeredDate = registeredDate;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public CakeShop(int shopId, String shopName, String address, String phoneNo, String registeredDate,
			String managerName) {
		super();
		this.shopId = shopId;
		this.shopName = shopName;
		this.address = address;
		this.phoneNo = phoneNo;
		this.registeredDate = registeredDate;
		this.managerName = managerName;
	}
	public CakeShop() {
		super();
		// TODO Auto-generated constructor stub
	}
	
		
	}
	