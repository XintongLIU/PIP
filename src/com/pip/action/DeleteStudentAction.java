package com.pip.action;

import com.pip.domain.Student;
import com.pip.service.impl.StudentServiceImpl;

public class DeleteStudentAction {
	
	StudentServiceImpl studentService;
	Student student;
	
	public String execute(){
		studentService.deleteStudent(student.getStudentID());
		
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
	
}
