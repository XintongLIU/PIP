package com.pip.action;

import com.pip.service.impl.TeacherServiceImpl;
import com.pip.domain.Teacher;

public class AddTeacherAction {

	TeacherServiceImpl teacherService;
	Integer teacherID;
	String teacherName;
	Teacher teacher;
	
	public String execute(){
		teacher = new Teacher();
		teacher.setTeacherName(teacherName);
		teacher.setPassword("123456");
		teacher.setTeacherID(teacherID);
		teacherService.insertTearcher(teacher);
		return "success";
	}

	public TeacherServiceImpl getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherServiceImpl teacherService) {
		this.teacherService = teacherService;
	}

	public Integer getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(Integer teacherID) {
		this.teacherID = teacherID;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
}
