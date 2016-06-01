package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pip.dao.IAdminDAO;
import com.pip.domain.Admin;
@Repository
public class AdminDAOImpl  extends BaseDAOImpl<Admin> implements IAdminDAO {

	@Override
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		List<Admin> list = new ArrayList<Admin>();
		list = super.find("from Admin");
		return list;
	}

	@Override
	public Admin findAdminById(int adminID) {
		// TODO Auto-generated method stub
		
		List<Admin> list = super.find("from Admin where adminID = " + adminID);
		return list.get(0);
	}

	@Override
	public boolean insertAdmin(Admin admin) {
		// TODO Auto-generated method stub
		try{
			//System.out.println("Admin " + admin.getAdminName());
			super.save(admin);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteAdmin(Admin admin) {
		// TODO Auto-generated method stub
		try{
			super.delete(admin);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
