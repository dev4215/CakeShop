package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CakeDao;
import com.niit.model.Cake;

@Repository(value = "CakeDao")
@Transactional
public class CakeDaoImpl implements CakeDao
{
	@Autowired
	SessionFactory sessionFactory;

	public boolean addCake(Cake cake) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(cake);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateCake(Cake cake) {
		try {
			sessionFactory.getCurrentSession().update(cake);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteCake(Cake cake) {
		try {
			sessionFactory.getCurrentSession().delete(cake);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	public Cake getCakeById(int cakeId) {
		Cake cake=sessionFactory.getCurrentSession().get(Cake.class, cakeId);
		return cake;
	}

	public List<Cake> getAllCakes() {

		@SuppressWarnings("unchecked")
		List<Cake> list=sessionFactory.getCurrentSession().createQuery("FROM Cake").getResultList();
		return list;
	
	}

}
