package com.pip.action;

import java.util.List;

import com.pip.domain.ProjectScore;
import com.pip.service.IProjectDetailService;
import com.pip.service.ITeamService;

public class ShowProjectDetailScoreAction {
	Integer teamID = 1;
	List<ProjectScore> projectScoreList;
	IProjectDetailService projectScoreService;
	ITeamService teamService;
	
	public String execute(){
		Integer projectID = teamService.seleteTeam(teamID).getProjectID();
		projectScoreList = projectScoreService.showProjectDetailListByProjectID(projectID);
		return "success";
	}

	public Integer getTeamID() {
		return teamID;
	}

	public void setTeamID(Integer teamID) {
		this.teamID = teamID;
	}

	public List<ProjectScore> getProjectScoreList() {
		return projectScoreList;
	}

	public void setProjectScoreList(List<ProjectScore> projectScoreList) {
		this.projectScoreList = projectScoreList;
	}

	public IProjectDetailService getProjectScoreService() {
		return projectScoreService;
	}

	public void setProjectScoreService(IProjectDetailService projectScoreService) {
		this.projectScoreService = projectScoreService;
	}

	public ITeamService getTeamService() {
		return teamService;
	}

	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}
	
	
}
