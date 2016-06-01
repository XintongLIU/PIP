package com.pip.action;

import com.pip.domain.Student;
import com.pip.service.impl.StudentServiceImpl;

public class UpdateStudentAction {
	StudentServiceImpl studentService;

	String studentClass;
	Integer teamID;
	Student student;
	
	public String execute(){
		student.setStudentClass(studentClass);
		student.setTeamID(teamID);
		studentService.updateStudent(student);
		return "success";
	}

	public StudentServiceImpl getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentServiceImpl studentService) {
		this.studentService = studentService;
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
