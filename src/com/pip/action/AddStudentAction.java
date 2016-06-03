package com.pip.action;

import java.util.List;

import com.pip.domain.Student;
import com.pip.service.impl.StudentServiceImpl;

public class AddStudentAction {
	StudentServiceImpl studentService;
	String studentNum;
	String teamNum;
	Integer studentID;
	String studentName;
	String studentClass;
	Integer teamID;
	Student student;
	List<Student> studentList;
	public String execute(){
		System.out.println(studentNum);
		System.out.println(teamNum);
		System.out.println(studentClass);
		System.out.println(studentName);
		if(studentNum==null || teamNum == null || studentClass == null || studentName == null)
			return "fail";
		studentID= Integer.parseInt(studentNum);
		teamID = Integer.parseInt(teamNum);
		student = new Student();
		student.setPassword("123456");
		student.setStudentClass(studentClass);
		student.setStudentID(studentID);
		student.setStudentName(studentName);
		student.setTeamID(teamID);
		studentService.insertStudent(student);
		studentList = studentService.showStudentList();
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

	public String getStudentNum() {
		return studentNum;
	}

	public void setStudentNum(String studentNum) {
		this.studentNum = studentNum;
	}

	public String getTeamNum() {
		return teamNum;
	}

	public void setTeamNum(String teamNum) {
		this.teamNum = teamNum;
	}

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
	
	
}
