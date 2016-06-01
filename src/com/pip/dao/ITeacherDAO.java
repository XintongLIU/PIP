package com.pip.dao;

import java.util.List;

import com.pip.domain.Teacher;

public interface ITeacherDAO {
	public List<Teacher> findAll();		//返回所有的Teacher信息
	public Teacher findTeacherById(int teacherID);		//通过teacherID查找Teacher信息
	public boolean insertTeacher(Teacher teacher);			//插入Teacher信息
	public boolean deleteTeacher(Teacher teacher);		//删除指定Teacher
}
