package com.pip.action;

import java.util.List;

import com.pip.domain.*;
import com.pip.service.impl.TeacherServiceImpl;
public class ShowTeacherListAction {
	
	TeacherServiceImpl teacherService;
	List<Teacher> teacherList;
	
	public String execute(){
		teacherList = teacherService.showTeacherList();		
		return "success";
		
	}

	public TeacherServiceImpl getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherServiceImpl teacherService) {
		this.teacherService = teacherService;
	}

	public List<Teacher> getTeacherList() {
		return teacherList;
	}

	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}
	

}
