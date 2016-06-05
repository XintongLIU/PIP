package com.pip.action;

import java.util.List;

import com.pip.dao.ITeacherDAO;
import com.pip.domain.Teacher;
import com.pip.service.ITeacherService;
import com.pip.service.impl.TeacherServiceImpl;

public class UpdateTeacherAction {
	
	ITeacherService teacherService;
	Teacher teacher;
	String teacherNum;
	int teacherID;
	String teacherName;
	List<Teacher> teacherList;
	ITeacherDAO teacherDAO;
	
	public String execute(){
		teacherID = Integer.parseInt(teacherNum);
		teacher = teacherService.selectTeacher(teacherID);
		teacher.setTeacherID(teacherID);
		teacher.setTeacherName(teacherName);
		teacherService.updateTeacher(teacher);
		teacherList = teacherService.showTeacherList();
		return "success";
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



	public List<Teacher> getTeacherList() {
		return teacherList;
	}



	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}



	public ITeacherDAO getTeacherDAO() {
		return teacherDAO;
	}



	public void setTeacherDAO(ITeacherDAO teacherDAO) {
		this.teacherDAO = teacherDAO;
	}



}
