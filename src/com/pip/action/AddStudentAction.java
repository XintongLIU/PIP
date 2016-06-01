package com.pip.action;

import com.pip.domain.Student;
import com.pip.service.impl.StudentServiceImpl;

public class AddStudentAction {
	StudentServiceImpl studentService;
	Integer studentID;
	String studentName;
	String studentClass;
	Integer teamID;
	Student student;
	
	public String execute(){
		student = new Student();
		student.setPassword("123456");
		student.setStudentClass(studentClass);
		student.setStudentID(studentID);
		student.setStudentName(studentName);
		student.setTeamID(teamID);
		studentService.insertStudent(student);
		
		return "success";
	}

	public StudentServiceImpl getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentServiceImpl studentService) {
		this.studentService = studentService;
	}

	public Integer getStudentID() {
		return studentID;
	}

	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentClass() {
		return studentClass;
	}

	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}

	public Integer getTeamID() {
		return teamID;
	}

	public void setTeamID(Integer teamID) {
		this.teamID = teamID;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
	
}
