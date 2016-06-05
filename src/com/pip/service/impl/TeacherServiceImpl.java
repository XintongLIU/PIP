package com.pip.service.impl;

import java.util.List;

import com.pip.domain.Teacher;
import com.pip.service.ITeacherService;
import com.pip.dao.ITeacherDAO;
import com.pip.dao.impl.TeacherDAOImpl;

public class TeacherServiceImpl implements ITeacherService {

	ITeacherDAO teacherDAO;

	@Override
	public int insertTeacher(Teacher teacher) {
		return (Integer)teacherDAO.insertTeacher(teacher);
	}

	@Override
	public void deleteTeacher(int id) {
		teacherDAO.deleteTeacher(teacherDAO.findTeacherById(id));
	}

	@Override
	public void updateTeacher(Teacher teacher) {
		teacherDAO.update(teacher);
	}

	@Override
	public Teacher selectTeacher(int id) {
		return teacherDAO.findTeacherById(id);
	}

	@Override
	public List<Teacher> showTeacherList() {	
		return teacherDAO.findAll();
	}

	public ITeacherDAO getTeacherDAO() {
		return teacherDAO;
	}

	public void setTeacherDAO(ITeacherDAO teacherDAO) {
		this.teacherDAO = teacherDAO;
	}



}
