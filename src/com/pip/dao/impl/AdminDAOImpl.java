package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.pip.dao.IAdminDAO;
import com.pip.domain.Admin;

public class AdminDAOImpl extends HibernateDaoSupport implements IAdminDAO{

	@Override
	public Admin findByID(Integer id) {
		return (Admin)getHibernateTemplate().get(Admin.class, id);
	}

	@Override
	public List<Admin> findAll() {
		return (List<Admin>)getHibernateTemplate().find("from Admin");
	}

	@Override
	public Integer save(Admin admin) {
		return (Integer)getHibernateTemplate().save(admin);
	}

	@Override
	public void update(Admin admin) {
		getHibernateTemplate().update(admin);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));
	}

	@Override
	public Admin findByAdminName(String name) {
		List<Admin> list = getHibernateTemplate().find("from Admin a where a.adminName=?", name);
		if(list.isEmpty()){
			return null;
		}
		else{
			return list.get(0);
		}
	}
	
}