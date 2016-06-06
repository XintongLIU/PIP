package com.pip.action;

import java.util.List;

import com.pip.domain.ProjectScore;
import com.pip.service.IProjectDetailService;
import com.pip.service.ITeamService;

public class UpdateProjectDetailScoreAction {
	ITeamService teamService;
	IProjectDetailService projectScoreService;
	
	Integer teamID;
	List<ProjectScore> projectScoreList;
	ProjectScore projectScore;
	String projectScoreString;
	String result;
	
	public String updateScore(){
		Integer projectID = teamService.seleteTeam(teamID).getProjectID();
		String[] scoreList = projectScoreString.split("/");
		projectScoreList = projectScoreService.showProjectDetailListByProjectID(projectID);
		int i = 0;
		for(String str: scoreList){
			int score = Integer.valueOf(str);
			projectScore = projectScoreList.get(i);
			projectScore.setProjectScore(score);
			projectScoreService.updateProjectDetail(projectScore);
			i++;
		}
		this.result = "success";
		return "success";
	}

	public IProjectDetailService getProjectScoreService() {
		return projectScoreService;
	}

	public void setProjectScoreService(IProjectDetailService projectScoreService) {
		this.projectScoreService = projectScoreService;
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

	public ProjectScore getProjectScore() {
		return projectScore;
	}

	public void setProjectScore(ProjectScore projectScore) {
		this.projectScore = projectScore;
	}

	public String getProjectScoreString() {
		return projectScoreString;
	}

	public void setProjectScoreString(String projectScoreString) {
		this.projectScoreString = projectScoreString;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public ITeamService getTeamService() {
		return teamService;
	}

	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}
	
	
}