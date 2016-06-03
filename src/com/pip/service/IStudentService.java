package com.pip.service;

import java.util.List;

import com.pip.domain.Student;

public interface IStudentService {
	Integer insertStudent(Student student);
	void deleteStudent(Integer id);
	void updateStudent(Student student);
	Student selectStudent(Integer id);
	List<Student> showStudentList();
	List<Student> showStudentByTeacherID(Integer teacherID);
}
