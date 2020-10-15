package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CustomerOrder")
public class CustomerOrder 
{
	@Id
	private int orderId;
	private String customerFirstName;
	private String customerLastname;
	private String customerAddress;
	private String customerContact;
	private String orderDate;
	private String orderedCakeName;
	private String orderCakeCategory;
	private String orderQuantity;
	private String orderCakePrice;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getCustomerFirstName() {
		return customerFirstName;
	}
	public void setCustomerFirstName(String customerFirstName) {
		this.customerFirstName = customerFirstName;
	}
	public String getCustomerLastname() {
		return customerLastname;
	}
	public void setCustomerLastname(String customerLastname) {
		this.customerLastname = customerLastname;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getCustomerContact() {
		return customerContact;
	}
	public void setCustomerContact(String customerContact) {
		this.customerContact = customerContact;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderedCakeName() {
		return orderedCakeName;
	}
	public void setOrderedCakeName(String orderedCakeName) {
		this.orderedCakeName = orderedCakeName;
	}
	public String getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(String orderQuantity) {
		this.orderQuantity = orderQuantity;
	}
	public String getOrderCakePrice() {
		return orderCakePrice;
	}
	public void setOrderCakePrice(String orderCakePrice) {
		this.orderCakePrice = orderCakePrice;
	}
	public String getOrderCakeCategory() {
		return orderCakeCategory;
	}
	public void setOrderCakeCategory(String orderCakeCategory) {
		this.orderCakeCategory = orderCakeCategory;
	}
	public CustomerOrder(int orderId, String customerFirstName, String customerLastname, String customerAddress,
			String customerContact, String orderDate, String orderedCakeName, String orderCakeCategory,
			String orderQuantity, String orderCakePrice) {
		super();
		this.orderId = orderId;
		this.customerFirstName = customerFirstName;
		this.customerLastname = customerLastname;
		this.customerAddress = customerAddress;
		this.customerContact = customerContact;
		this.orderDate = orderDate;
		this.orderedCakeName = orderedCakeName;
		this.orderCakeCategory = orderCakeCategory;
		this.orderQuantity = orderQuantity;
		this.orderCakePrice = orderCakePrice;
	}
	public CustomerOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
