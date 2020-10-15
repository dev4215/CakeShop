package com.niit.Dao;



import com.niit.model.Login;
import com.niit.model.Registration;

public interface RegistrationDao 
{
	  
	public boolean addUser(Registration registration);
	public boolean validateLogin(Login login);
   
}
