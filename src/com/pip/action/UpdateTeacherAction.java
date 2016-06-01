package com.pip.action;

import com.pip.domain.Teacher;
import com.pip.service.impl.TeacherServiceImpl;

public class UpdateTeacherAction {
	
	TeacherServiceImpl teacherService;
	Teacher teacher;
	int teacherID;
	String teacherName;
	String teacherPassword;
	
	public String execute(){
		teacher.setTeacherID(teacherID);
		teacher.setTeacherName(teacherName);
		teacher.setPassword(teacherPassword);
		teacherService.updateTeacher(teacher);
		return "success";
	}

	public TeacherServiceImpl getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherServiceImpl teacherService) {
		this.teacherService = teacherService;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public int getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherPassword() {
		return teacherPassword;
	}

	public void setTeacherPassword(String teacherPassword) {
		this.teacherPassword = teacherPassword;
	}

}
