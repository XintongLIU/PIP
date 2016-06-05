package com.pip.action;

import com.pip.domain.Teacher;
import com.pip.service.impl.TeacherServiceImpl;

public class DeleteTeacherAction {
	
	TeacherServiceImpl teacherService;
	Teacher teacher;
	Integer teacherID;
	String result;
	String teacherIDs;
	
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
	
	public String deleteTeachers(){
		try{
			String[] ids = teacherIDs.split("/");
			for(String id : ids)
				teacherService.deleteTeacher(Integer.parseInt(id));
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

	public String getTeacherIDs() {
		return teacherIDs;
	}

	public void setTeacherIDs(String teacherIDs) {
		this.teacherIDs = teacherIDs;
	}	

}
