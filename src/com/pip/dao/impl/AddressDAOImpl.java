package com.pip.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pip.dao.IAddressDAO;
import com.pip.domain.Address;

 public class AddressDAOImpl  extends HibernateDaoSupport implements IAddressDAO{

	@Override
	public Address findByID(Integer id) {
		return (Address)getHibernateTemplate().get(Address.class, id);
	}

	@Override
	public List<Address> findAll() {
		return (List<Address>)getHibernateTemplate().find("from Address");
	}

	@Override
	public Integer save(Address address) {
		return (Integer)getHibernateTemplate().save(address);
	}

	@Override
	public void update(Address address) {
		getHibernateTemplate().update(address);
		
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));
		
	}

 }