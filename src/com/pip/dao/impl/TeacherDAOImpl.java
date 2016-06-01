package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.pip.dao.ITeacherDAO;
import com.pip.domain.Teacher;

@Repository
public class TeacherDAOImpl extends BaseDAOImpl<Teacher> implements ITeacherDAO{

	@Override
	public List<Teacher> find(String hql, Teacher[] param) {
		// TODO Auto-generated method stub
		return super.find("from Teacher where teacherID= :param", param);
	}

	@Override
	public Teacher get(String hql, Teacher[] param) {
		// TODO Auto-generated method stub
		return super.get(Teacher.class, param);
	}

	@Override
	public Long count(String hql, Teacher[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer executeHql(String hql, Teacher[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teacher> findAll() {
		// TODO Auto-generated method stub
		
		List<Teacher> list = new ArrayList<Teacher>();
		list = super.find("from Teacher");
		return list;
	}

	@Override
	public Teacher findTeacherById(int teacherID) {
		// TODO Auto-generated method stub
//		System.out.println("teacherID " +teacherID);
		List<Teacher> list = super.find("from Teacher where teacherID = " + teacherID);
		return list.get(0);
	}

	@Override
	public boolean insertTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		try{
			super.save(teacher);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		try{
			super.delete(teacher);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	

	

}
