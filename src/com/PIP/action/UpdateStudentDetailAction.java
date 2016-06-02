package com.pip.action;

import com.pip.domain.Student;
import com.pip.service.IStudentService;

/**
 * JSON Action
 * @author Zhiqi Yang
 *
 */
public class UpdateStudentDetailAction {
	
	//IOC Service
	IStudentService studentService;
	
	//in
	String studentName;
	Integer studentID;
	String studentClass;
	Integer teamID;
	Integer workTime;
	Integer score;
	
	//out
	String result;
	
	public String execute(){
		if(teamID == null){
			result = "TEAMID_ILLEGAL";
		}
		else if(workTime == null){
			result = "WORKTIME_ILLEGAL";
		}
		else if(score == null){
			result = "SCORE_ILLEGAL";
		}
		else if(studentService.selectStudent(studentID) != null){ //if studentID exists, update
			Student student = new Student();
			student.setStudentName(studentName);
			student.setStudentClass(studentClass);
			student.setStudentID(studentID);
			student.setTeamID(teamID);
			student.setWorkTime(workTime);
			student.setScore(score);
			studentService.updateStudent(student);
			result = "SUCCESS " + studentID;
		}
		else{    //if studentID does not exists, result = 'STUDENTID_NOT_EXISTS'
			result = "STUDENTID_NOT_EXISTS";
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

	public Integer getStudentID() {
		return studentID;
	}

	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
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

	public Integer getWorkTime() {
		return workTime;
	}

	public void setWorkTime(Integer workTime) {
		this.workTime = workTime;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
}
