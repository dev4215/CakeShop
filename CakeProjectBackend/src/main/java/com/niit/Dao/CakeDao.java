package com.niit.Dao;

import java.util.List;

import com.niit.model.Cake;

public interface CakeDao 
{
	public boolean addCake(Cake cake);
	public boolean updateCake(Cake cake);
	public boolean deleteCake(Cake cake);
	public Cake getCakeById(int cakeId);
	List<Cake> getAllCakes();
}
