package com.pip.action;

import java.util.List;

import com.pip.domain.Student;
import com.pip.service.impl.StudentServiceImpl;

public class DeleteStudentAction {
	
	StudentServiceImpl studentService;
	Student student;
	Integer studentID;
	List<Student> studentList;
	public String execute(){
		studentService.deleteStudent(studentID);
		studentList = studentService.showStudentList();
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

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
	
}
