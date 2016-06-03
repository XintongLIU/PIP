package com.pip.action;

import com.pip.domain.Student;
import com.pip.service.IStudentService;

//JSON Action
public class EnterStudentInfoAction {
	
	//IOC Service
	IStudentService studentService;
	
	//in
	Integer studentID;
	String studentName;
	String studentClass;
	Integer teamID;
	
	//out
	String result;
	
	public String execute(){
		if(teamID == null){
			result = "TEAMID_ILLEGAL";
		}
		else if(studentService.selectStudent(studentID) == null){ //if this studentID doesn't exists, will insert
			Student student = new Student();
			student.setStudentID(studentID);
			student.setStudentName(studentName);
			student.setStudentClass(studentClass);
			student.setTeamID(teamID);
			studentService.insertStudent(student);
			result = "SUCCESS " + studentID;
		}
		else{    //if studentID exists, result = 'STUDENTID_EXISTS'
			result = "STUDENTID_EXISTS";
		}
		return "success";
	}

	public IStudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
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

	public Integer getStudentID() {
		return studentID;
	}

	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}

	public Integer getTeamID() {
		return teamID;
	}

	public void setTeamID(Integer teamID) {
		this.teamID = teamID;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	
	
}
