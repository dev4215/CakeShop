package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CakeDao;
import com.niit.Dao.CakeShopDao;
import com.niit.model.Cake;

public class TestDBConn 
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext appContext=new AnnotationConfigApplicationContext();
		appContext.scan("com.niit");	
		appContext.refresh();
		Cake cake= new Cake();
		cake.setCakeId(3);
		cake.setCakeName("Chocolate cake");
		cake.setCakeCategory("Egg Cake");
		cake.setCakePrice(400);
		CakeDao cakeDao=(CakeDao) appContext.getBean("cakeDao");
		if(cakeDao.addCake(cake))
		{
			System.out.println("Object Saved");
		}
		else
		{
			System.out.println("Problem Occured");
		}
		//CakeShopDao cakeshopDao=(CakeShopDao) appContext.getBean("CakeShopDao");
		
	}

}
