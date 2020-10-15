package com.niit.Dao;

import java.util.List;


import com.niit.model.CustomerOrder;

public interface CustomerOrderDao 
{
	public boolean addCustomerOrder(CustomerOrder order);
	public boolean updateCustomerOrder(CustomerOrder order);
	public boolean deleteCustomerOrder(CustomerOrder order);
	public CustomerOrder getCustomerOrderById(int orderId);
	List<CustomerOrder> getAllCustomerOrders();

}
