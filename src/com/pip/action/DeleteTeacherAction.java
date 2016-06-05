package com.pip.action;

import java.util.List;

import com.pip.domain.Teacher;
import com.pip.service.impl.TeacherServiceImpl;

public class DeleteTeacherAction {
	
	TeacherServiceImpl teacherService;
	Teacher teacher;
	Integer teacherID;
	String result;
	
	public String execute(){
		try{
			teacherService.deleteTeacher(teacherID);
		    result = "success";
		}
		catch(Exception ex){
			ex.printStackTrace();
			result = "fail";
		}
		return result;
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}	
	
}
