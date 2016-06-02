package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.pip.dao.ITeacherDAO;
import com.pip.domain.Teacher;

@Repository
public class TeacherDAOImpl extends HibernateDaoSupport implements ITeacherDAO{

	@Override
	public List<Teacher> findAll() {
		// TODO Auto-generated method stub
		return (List<Teacher>)getHibernateTemplate().find("from Teacher");
	}

	@Override
	public Teacher findTeacherById(int teacherID) {
		// TODO Auto-generated method stub
		return (Teacher)getHibernateTemplate().get(Teacher.class, teacherID);
	}

	@Override
	public Integer insertTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(teacher);
	}

	@Override
	public void deleteTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(teacher);
	}

	@Override
	public Teacher findTeacherByName(String teacherName) {
		List<Teacher> list = getHibernateTemplate().find("from Teacher as t where t.teacherName=?" , teacherName);
		if(list.isEmpty()){
			return null;
		}
		else{
			return list.get(0);
		}
	}

	@Override
	public void update(Teacher teacher) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(teacher);
	}

	
	

}
