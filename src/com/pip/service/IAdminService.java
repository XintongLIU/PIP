package com.pip.service;

import java.util.List;

import com.pip.domain.Admin;

public interface IAdminService {
	Integer insertAdmin(Admin admin);
	void deleteAdmin(Integer id);
	void updateAdmin(Admin admin);
	Admin seleteAdmin(Integer id);
	List<Admin> showAdminList();
}
