package com.pip.service.impl;

import java.util.List;

import com.pip.dao.impl.AdminDAOImpl;
import com.pip.domain.Admin;
import com.pip.domain.Student;
import com.pip.service.IAdminService;

public class AdminServiceImpl implements IAdminService {

	AdminDAOImpl adminDAO;
	
	@Override
	public Integer insertAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return (Integer) adminDAO.save(admin);
	}

	@Override
	public void deleteAdmin(Integer id) {
		// TODO Auto-generated method stub
		Admin admin = adminDAO.findAdminById(id);
		adminDAO.deleteAdmin(admin);

	}

	@Override
	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		adminDAO.save(admin);
	}

	@Override
	public Admin seleteAdmin(Integer id) {
		// TODO Auto-generated method stub
		return adminDAO.findAdminById(id);
	}

	@Override
	public List<Admin> showAdminList() {
		// TODO Auto-generated method stub
		return adminDAO.findAll();
	}

	public AdminDAOImpl getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAOImpl adminDAO) {
		this.adminDAO = adminDAO;
	}

	
}
