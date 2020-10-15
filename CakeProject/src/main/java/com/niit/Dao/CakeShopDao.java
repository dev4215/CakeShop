package com.niit.Dao;

import java.util.List;

import com.niit.model.CakeShop;

public interface CakeShopDao
{

	   public boolean addCakeShop(CakeShop cakeshop);
		public boolean updateCakeShop(CakeShop cakeshop);
		public boolean deleteCakeShop(CakeShop cakeshop);
		public CakeShop getCakeShopById(int shopId);
		List<CakeShop> getAllCakeShops();
}


