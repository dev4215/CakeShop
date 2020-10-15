package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CakeShopDao;
import com.niit.model.CakeShop;


public class CakeShopDaoTest
{
	static CakeShopDao cakeshopDao;

	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext appContext=new AnnotationConfigApplicationContext();
		appContext.scan("com.niit");	
		appContext.refresh();
		cakeshopDao=(CakeShopDao) appContext.getBean("CakeShopDao");
	}
		
		@Ignore
		@Test
		public void addCakeShopTest()
		{
			 CakeShop cakeshop= new CakeShop();
		     cakeshop.setShopName("sweets cake shop");
			 assertTrue("Problem in Inserting Cake",cakeshopDao.addCakeShop(cakeshop));
		}
		
		@Test
		public void getCakeShopTest()
		{
			CakeShop cakeShop= cakeshopDao.getCakeShopById(1);
			
			assertNotNull("cake shop object not Found",cakeShop);
			System.out.println("Cake shop Name:"+cakeShop.getShopName());
	    }
		
		@Test
		public void getCakeShopList()
		{
			List<CakeShop> cakeShopList=(List<CakeShop>)cakeshopDao.getAllCakeShops();
			
			for(CakeShop cakeshoplist:cakeShopList)
			{
				System.out.print("Cake shop Id:"+cakeshoplist.getShopId()+"\n");
				System.out.print("Cake shop Name:"+cakeshoplist.getShopName()+"\n");
				System.out.println("cake shop Address:"+cakeshoplist.getAddress()+"\n");
			}
		}
		

}
