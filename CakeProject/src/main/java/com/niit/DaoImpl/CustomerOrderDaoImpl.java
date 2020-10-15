package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CustomerOrderDao;
import com.niit.model.Cake;
import com.niit.model.CustomerOrder;

@Repository(value="customerOrder")
@Transactional
public class CustomerOrderDaoImpl implements  CustomerOrderDao
{
	@Autowired
	SessionFactory sessionFactory;

	public boolean addCustomerOrder(CustomerOrder order) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(order);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateCustomerOrder(CustomerOrder order) {
		
		try {
			sessionFactory.getCurrentSession().update(order);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteCustomerOrder(CustomerOrder order) {
		
		try {
			sessionFactory.getCurrentSession().delete(order);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	public CustomerOrder getCustomerOrderById(int orderId) {
		
		CustomerOrder order =sessionFactory.getCurrentSession().get(CustomerOrder.class, orderId);
		return order;

	}

	public List<CustomerOrder> getAllCustomerOrders() {
		
		@SuppressWarnings("unchecked")
		List<CustomerOrder> list=sessionFactory.getCurrentSession().createQuery("FROM CustomerOrder").getResultList();
		return list;
	}

}
