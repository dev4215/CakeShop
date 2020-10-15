package com.niit.DaoImpl;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.Dao.LoginDao;
import com.niit.model.Login;

@Repository(value="LoginDao")
@Transactional
public class LoginDaoImpl implements LoginDao
{
	    @Autowired
	   SessionFactory sessionFactory;
	public boolean addLogin(Login login) 
	{
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(login);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		
		
	}

}
