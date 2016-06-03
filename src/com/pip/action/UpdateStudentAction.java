package com.pip.action;

import java.util.List;

import com.pip.dao.IStudentDAO;
import com.pip.domain.Student;
import com.pip.service.IStudentService;
import com.pip.service.impl.StudentServiceImpl;

public class UpdateStudentAction {
	IStudentService studentService;

	String studentClass;
	Integer teamID;
	Student student;
	String teamNum;
	List<Student> studentList;
	String studentID;
	IStudentDAO studentDAO;
	public String execute(){
		System.out.println(studentClass);
		System.out.println(teamNum);
		student = studentService.selectStudent(Integer.parseInt(studentID));
		//student.setStudentID(Integer.parseInt(studentID));
		student.setStudentClass(studentClass);
		
		teamID=Integer.parseInt(teamNum);
		student.setTeamID(teamID);
		studentService.updateStudent(student);
		
		studentList = studentService.showStudentList();
		return "success";
	}



	public IStudentService getStudentService() {
		return studentService;
	}



	public void setStudentService(IStudentService studentService) {
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

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}

	public String getTeamNum() {
		return teamNum;
	}

	public void setTeamNum(String teamNum) {
		this.teamNum = teamNum;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}


	
}
