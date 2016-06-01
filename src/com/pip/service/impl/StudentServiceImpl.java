package com.pip.service.impl;

import java.util.List;

import com.pip.dao.IStudentDAO;
import com.pip.dao.impl.StudentDAOImpl;
import com.pip.domain.Student;
import com.pip.service.IStudentService;

public class StudentServiceImpl implements IStudentService {

	StudentDAOImpl studentDAO;
	
	@Override
	public Integer insertStudent(Student student) {
		// TODO Auto-generated method stub
		return (Integer) studentDAO.save(student);
	}

	@Override
	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		Student student = studentDAO.findStudentById(id);
		studentDAO.deleteStudent(student);
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		studentDAO.update(student);
	}

	@Override
	public Student selectStudent(Integer id) {
		// TODO Auto-generated method stub
		return studentDAO.findStudentById(id);
	}

	@Override
	public List<Student> showStudentList() {
		// TODO Auto-generated method stub
		return studentDAO.findAll();
	}

	public StudentDAOImpl getStudentDAO() {
		return studentDAO;
	}

	public void setStudentDAO(StudentDAOImpl studentDAO) {
		this.studentDAO = studentDAO;
	}



	
}
