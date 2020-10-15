package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CakeShopDao;
import com.niit.model.CakeShop;


@Repository(value = "CakeShopDao")
@Transactional
public class CakeShopDaoImpl implements CakeShopDao
{
	@Autowired
	SessionFactory sessionFactory;


	public boolean addCakeShop(CakeShop cakeshop)
	{
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(cakeshop);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public boolean updateCakeShop(CakeShop cakeshop) 
	{
		try {
			sessionFactory.getCurrentSession().update(cakeshop);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteCakeShop(CakeShop cakeshop) 
	{
		try {
			sessionFactory.getCurrentSession().delete(cakeshop);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public CakeShop getCakeShopById(int shopId) 
	{
		CakeShop cakeshop = sessionFactory.getCurrentSession().get(CakeShop.class, shopId);
		return cakeshop;
		
	}

	public List<CakeShop> getAllCakeShops() 
	{
		@SuppressWarnings("unchecked")
		List<CakeShop> list = sessionFactory.getCurrentSession().createQuery("FROM CakeShop").list();
		return list;
	
	}

}
