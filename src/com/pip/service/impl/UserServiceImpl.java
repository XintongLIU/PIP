package com.pip.service.impl;

import java.sql.Timestamp;

import javax.annotation.Resource;

import com.pip.dao.IAdminDAO;
import com.pip.dao.IStudentDAO;
import com.pip.dao.ITeacherDAO;
import com.pip.domain.Admin;
import com.pip.domain.Student;
import com.pip.domain.Teacher;
import com.pip.service.IUserService;

public class UserServiceImpl implements IUserService{
	@Resource
	private IStudentDAO iStudentDao;		//userType == 1 student
	@Resource
	private ITeacherDAO iTeacherDao;		//userType == 2 teacher
	@Resource
	private IAdminDAO iAdminDao;			//userType == 3 admin
	
	
	@Override
	public Integer login(String username, String password, Integer userType) {
		// TODO Auto-generated method stub
		if(userType == 1){
			Student student = iStudentDao.findStudentByName(username);
			if(student != null && student.getPassword().equals(password)){
				student.setLoginTime(new Timestamp(System.currentTimeMillis()));
				iStudentDao.update(student);
				return student.getStudentID();
			}
		}else if(userType == 2){
			Teacher teacher = iTeacherDao.findTeacherByName(username);
			if(teacher != null && teacher.getPassword().equals(password)){
				return teacher.getTeacherID();
			}
		}else if(userType == 3){
			Admin admin = iAdminDao.findByAdminName(username);
			if(admin != null && admin.getPassword().equals(password)){
				return admin.getAdminID();
			}
		}
		
		return 0;
	}

	@Override
	public void logout() {
		// TODO Auto-generated method stub
		
	}

	public IStudentDAO getiStudentDao() {
		return iStudentDao;
	}

	public void setiStudentDao(IStudentDAO iStudentDao) {
		this.iStudentDao = iStudentDao;
	}

	public ITeacherDAO getiTeacherDao() {
		return iTeacherDao;
	}

	public void setiTeacherDao(ITeacherDAO iTeacherDao) {
		this.iTeacherDao = iTeacherDao;
	}

	public IAdminDAO getiAdminDao() {
		return iAdminDao;
	}

	public void setiAdminDao(IAdminDAO iAdminDao) {
		this.iAdminDao = iAdminDao;
	}
	
	

}
