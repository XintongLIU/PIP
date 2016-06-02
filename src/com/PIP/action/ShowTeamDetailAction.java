package com.pip.action;

import java.util.List;

import com.pip.domain.Student;
import com.pip.service.ITeamService;

public class ShowTeamDetailAction {
	//IOC Service
	ITeamService teamService;
	
	//in
	Integer teamID;
	
	//out
	List<Student> teamMemberList;
	
	
	public  String execute(){
		teamMemberList = teamService.showStudentByTeamID(teamID);
		return "success";
	}


	public ITeamService getTeamService() {
		return teamService;
	}


	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}


	public Integer getTeamID() {
		return teamID;
	}


	public void setTeamID(Integer teamID) {
		this.teamID = teamID;
	}


	public List<Student> getTeamMemberList() {
		return teamMemberList;
	}


	public void setTeamMemberList(List<Student> teamMemberList) {
		this.teamMemberList = teamMemberList;
	}
	
	
	
}
