package com.pip.service.impl;

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
			if(student != null && student.getPassword() == password){
				return student.getStudentID();
			}
		}else if(userType == 2){
			Admin admin = iAdminDao.findByAdminName(username);
			if(admin != null && admin.getPassword() == password){
				return admin.getAdminID();
			}
		}else if(userType == 3){
			Teacher teacher = iTeacherDao.findTeacherByName(username);
			if(teacher != null && teacher.getPassword() == password){
				return teacher.getTeacherID();
			}
		}
		
		return 0;
	}

	@Override
	public void logout() {
		// TODO Auto-generated method stub
		
	}

}
