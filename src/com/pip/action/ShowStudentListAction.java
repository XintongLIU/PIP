package com.pip.action;

import java.util.List;

import com.pip.domain.Student;
import com.pip.service.impl.StudentServiceImpl;

public class ShowStudentListAction {

	StudentServiceImpl studentService;
	List<Student> studentList;
	
	public String execute(){
		studentList = studentService.showStudentList();
		return "success";
	}

	public StudentServiceImpl getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentServiceImpl studentService) {
		this.studentService = studentService;
	}

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
	
	
}
