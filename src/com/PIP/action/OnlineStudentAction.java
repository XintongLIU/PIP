package com.pip.action;

import java.util.List;

import com.pip.domain.Student;
import com.pip.service.IStudentService;

public class OnlineStudentAction {
	
	//IOC Service
	IStudentService studentService;
	
	//out
	List<Student> studentList;
	
	public String execute(){
		studentList = studentService.showStudentList();
		return "success";
	}

	public IStudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
	}

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
	
	
	
}
