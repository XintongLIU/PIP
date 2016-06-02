package com.pip.dao;

import java.util.List;

import com.pip.domain.Address;

public interface IAddressDAO {
	Address findByID(Integer id);
	List<Address> findAll();
	Integer save(Address address);
	void update(Address address);
	void delete(Integer id);
}
