package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.Dao.CustomerOrderDao;
import com.niit.model.CustomerOrder;


public class CustomerOrderDaoTest 
{
	static CustomerOrderDao customerorderDao;

	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext appContext=new AnnotationConfigApplicationContext();
		appContext.scan("com.niit");	
		appContext.refresh();
		customerorderDao= (CustomerOrderDao) appContext.getBean("customerOrder");
	}
		
		@Ignore
		@Test
		public void addCustomerOrderTest()
		{
			CustomerOrder customerorder= new CustomerOrder();
			customerorder.setCustomerFirstName("sanchita");
			assertTrue("Problem in Inserting Customer Name",customerorderDao.addCustomerOrder(customerorder));
		  
		}
		
		@Test
		public void getCustomerOrderTest()
		{
			CustomerOrder customerorder=customerorderDao.getCustomerOrderById(1);
		     assertNotNull("customer order object not Found",customerorder);
			System.out.println("Customer Name:"+customerorder.getCustomerFirstName());
	    }
		
		@Test
		public void getCustomerOrderList()
		{
			List<CustomerOrder> customerOrderList=(List<CustomerOrder>)customerorderDao.getAllCustomerOrders();
			
			for(CustomerOrder customerorderlist:customerOrderList)
			{
				System.out.print("Customer Id:"+customerorderlist.getOrderId()+"\n");
				System.out.print("Customer First Name:"+customerorderlist.getCustomerFirstName()+"\n");
				System.out.println("Customer Last Name:"+customerorderlist.getCustomerLastname()+"\n");
				System.out.println("Customer Address:"+customerorderlist.getCustomerAddress()+"\n");
			}
		}
		


}
