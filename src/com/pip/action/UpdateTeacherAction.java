package com.pip.action;


import com.pip.domain.Teacher;
import com.pip.service.ITeacherService;

public class UpdateTeacherAction {

	ITeacherService teacherService;
	Teacher teacher;
	String teacherNum;
	int teacherID;
	int newteacherID;
	String teacherName;
	String result;

	public String execute() {
		try {
			teacher = teacherService.selectTeacher(teacherID);
			teacherService.deleteTeacher(teacherID);
			teacher.setTeacherID(newteacherID);
			teacher.setTeacherName(teacherName);
			teacherService.insertTeacher(teacher);
			result = "success";
		} catch (Exception ex) {
			ex.printStackTrace();
			result = "fail";
		}
		return result;
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

	public ITeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(ITeacherService teacherService) {
		this.teacherService = teacherService;
	}

	public String getTeacherNum() {
		return teacherNum;
	}

	public void setTeacherNum(String teacherNum) {
		this.teacherNum = teacherNum;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getNewteacherID() {
		return newteacherID;
	}

	public void setNewteacherID(int newteacherID) {
		this.newteacherID = newteacherID;
	}

}
