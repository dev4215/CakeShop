package com.niit.DaoImpl;


import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.HibernateException;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.Dao.RegistrationDao;
import com.niit.model.Login;
import com.niit.model.Registration;

@Repository(value="RegistrationDao")
@Transactional
public class RegistrationDaoImpl implements RegistrationDao
{
   @Autowired
   SessionFactory sessionFactory;
	public boolean addUser(Registration registration) 
	{
		try {
		sessionFactory.getCurrentSession().saveOrUpdate(registration);
		return true;
	} catch (HibernateException e) {
		e.printStackTrace();
		return false;
	}
		
	}
	public boolean validateLogin(Login login) 
	{
		boolean userFound = false;
		Query query= sessionFactory.getCurrentSession()
				.createQuery("From Registration where email_id=:email AND password=:pass")
				.setParameter("email", login.getUserName()).setParameter("pass", login.getPassword());
		List list = query.list();
		
		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}

		return userFound;              
	   }
	}

	


