package com.pip.dao;

import java.util.List;

import com.pip.domain.Address;
import com.pip.domain.Admin;

public interface IAdminDAO {
	Admin findByID(Integer id);
	List<Admin> findAll();
	Integer save(Admin admin);
	void update(Admin admin);
	void delete(Integer id);
	Admin findByAdminName(String name);
}
