package com.pip.action;

import java.util.List;

import com.pip.domain.Teacher;
import com.pip.service.impl.TeacherServiceImpl;

public class DeleteTeacherAction {
	
	TeacherServiceImpl teacherService;
	Teacher teacher;
	Integer teacherID;
	List<Teacher> teacherList;
	
	public String execute(){
		teacherService.deleteTeacher(teacherID);
		teacherList = teacherService.showTeacherList();
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

	public Integer getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(Integer teacherID) {
		this.teacherID = teacherID;
	}

	public List<Teacher> getTeacherList() {
		return teacherList;
	}

	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}
	

}
