package com.pip.dao;

import java.util.List;

import com.pip.domain.Student;


public interface IStudentDAO {
	public List<Student> findAll();		//返回所有的Student信息
	public Student findStudentById(int studentID);		//通过StudentID查找Student信息
	public boolean insertStudent(Student student);			//插入Student信息
	public boolean deleteStudent(Student student);		//删除指定Student
}
