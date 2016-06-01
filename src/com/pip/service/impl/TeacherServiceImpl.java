package com.pip.service.impl;

import java.util.List;

import com.pip.domain.Teacher;
import com.pip.service.ITeacherService;
import com.pip.dao.impl.TeacherDAOImpl;

public class TeacherServiceImpl implements ITeacherService {

	TeacherDAOImpl teacherDao;

	@Override
	public int insertTearcher(Teacher teacher) {
		return (Integer)teacherDao.save(teacher);
	}

	@Override
	public void deleteTeacher(int id) {
		teacherDao.deleteTeacher(teacherDao.findTeacherById(id));
	}

	@Override
	public void updateTeacher(Teacher teacher) {
		teacherDao.update(teacher);
	}

	@Override
	public Teacher selectTeacher(int id) {
		return teacherDao.findTeacherById(id);
	}

	@Override
	public List<Teacher> showTeacherList() {	
		return teacherDao.findAll();
	}

	public TeacherDAOImpl getTeacherDao() {
		return teacherDao;
	}

	public void setTeacherDao(TeacherDAOImpl teacherDao) {
		this.teacherDao = teacherDao;
	}

}
