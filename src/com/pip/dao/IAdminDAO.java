package com.pip.dao;

import java.util.List;

import com.pip.domain.Admin;

public interface IAdminDAO {
	public List<Admin> findAll();		//返回所有的Admin信息
	public Admin findAdminById(int adminID);		//通过AdminID查找Admin信息
	public boolean insertAdmin(Admin admin);			//插入Admin信息
	public boolean deleteAdmin(Admin admin);		//删除指定Admin
	public Admin findAdminByName(String adminName);
}
