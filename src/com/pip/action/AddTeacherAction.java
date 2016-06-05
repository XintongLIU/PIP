package com.pip.action;

import java.util.List;

import com.pip.service.impl.TeacherServiceImpl;
import com.pip.domain.Teacher;

public class AddTeacherAction {

	TeacherServiceImpl teacherService;
	String teacherNum;
	Integer teacherID;
	String teacherName;
	Teacher teacher;
	List<Teacher> teacherList;
	public String execute(){

		if(teacherID==null||teacherName==null)
			return "fail";
		teacherID = Integer.parseInt(teacherNum);
		teacher = new Teacher();
		teacher.setTeacherName(teacherName);
		teacher.setPassword("123456");
		teacher.setTeacherID(teacherID);
		teacherService.insertTearcher(teacher);
		teacherList = teacherService.showTeacherList();
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

	public String getTeacherNum() {
		return teacherNum;
	}

	public void setTeacherNum(String teacherNum) {
		this.teacherNum = teacherNum;
	}

	public List<Teacher> getTeacherList() {
		return teacherList;
	}

	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}
}
