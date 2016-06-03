package com.pip.action;

import com.pip.domain.Student;
import com.pip.service.impl.StudentServiceImpl;

public class DeleteStudentAction {
	
	StudentServiceImpl studentService;
	Student student;
	Integer studentID;
	public String execute(){
		studentService.deleteStudent(studentID);
		
		return "success";
		
	}

	public StudentServiceImpl getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentServiceImpl studentService) {
		this.studentService = studentService;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Integer getStudentID() {
		return studentID;
	}

	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
	
}
