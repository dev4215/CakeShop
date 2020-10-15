package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CakeDao;
import com.niit.model.Cake;

public class CakeDaoTest
{

	static CakeDao cakeDao;

	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext appContext=new AnnotationConfigApplicationContext();
		appContext.scan("com.niit");	
		appContext.refresh();
		cakeDao=(CakeDao) appContext.getBean("cakeDao");
	}
		
		@Ignore
		@Test
		public void addCakeTest()
		{
			 Cake cake= new Cake();
		     cake.setCakeName("Chocolate cake");
			 assertTrue("Problem in Inserting Cake",cakeDao.addCake(cake));
		}
		
		@Test
		public void getCakeTest()
		{
			Cake cake= cakeDao.getCakeById(2);
			
			assertNotNull("cake object not Found",cake);
			System.out.println("Cake Name:"+cake.getCakeName());
	    }
		
		@Test
		public void getCakeList()
		{
			List<Cake> cakeList=(List<Cake>)cakeDao.getAllCakes();
			
			for(Cake cakelist:cakeList)
			{
				System.out.print("Cake Id:"+cakelist.getCakeId()+"\n");
				System.out.print("Cake Name:"+cakelist.getCakeName()+"\n");
				System.out.println("cake Category:"+cakelist.getCakeCategory()+"\n");
			}
		}
		
	

	
	}


