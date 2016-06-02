package com.pip.action;

import com.pip.domain.Student;
import com.pip.service.IStudentService;

public class ShowStudentDetailAction {
	
	//IOC Service
	IStudentService studentService;
	
	//in
	Integer studentID;
	
	//out
	Student student;
	
	public String execute(){
		student = studentService.selectStudent(studentID);
		return "success";
	}

	public IStudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
	}

	public Integer getStudentID() {
		return studentID;
	}

	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
	
	
}
