package com.pip.dao;

import java.util.List;

import com.pip.domain.Teacher;

public interface ITeacherDAO {
	public List<Teacher> findAll();		//返回所有的Teacher信息
	public Teacher findTeacherById(int teacherID);		//通过teacherID查找Teacher信息
	public Integer insertTeacher(Teacher teacher);			//插入Teacher信息
	public void deleteTeacher(Teacher teacher);		//删除指定Teacher
	public Teacher findTeacherByName(String teacherName);
	public void update(Teacher teacher);
}
