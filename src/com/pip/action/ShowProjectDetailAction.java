package com.pip.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.pip.domain.ProjectScore;
import com.pip.service.IProjectDetailService;

public class ShowProjectDetailAction {
	public IProjectDetailService projectDetailStateService; 
	public List<Integer> projectDetail;
	public List<Integer> score;
	public int totalScore = 0;

	public List<Integer> getProjectDetail() {
		return projectDetail;
	}


	public void setProjectDetail(List<Integer> projectDetail) {
		this.projectDetail = projectDetail;
	}
	
	
	public List<Integer> getScore() {
		return score;
	}


	public void setScore(List<Integer> score) {
		this.score = score;
	}

	public int getTotalScore() {
		return totalScore;
	}


	public void setTotalScore(int totalScore) {
		this.totalScore = totalScore;
	}
	

	public IProjectDetailService getProjectDetailStateService() {
		return projectDetailStateService;
	}


	public void setProjectDetailStateService(
			IProjectDetailService projectDetailStateService) {
		this.projectDetailStateService = projectDetailStateService;
	}


	public String showState(){

		projectDetail = new ArrayList<Integer>();
		
		List<ProjectScore> projectDetailList  = new ArrayList<ProjectScore>(); 
		Map map = ActionContext.getContext().getSession();
		int studentId = (Integer)map.get("userID");
//		projectDetailList = projectDetailStateService.showProjectDetailList();		//need the student's id
		projectDetailList = projectDetailStateService.showProjectDetailListByProjectID(1);
		
		for(int i = 0; i < 6; i++){
			projectDetail.add(projectDetailList.get(i).getProjectState());
		}
		
		return "success";
	}
	
	public String showStateAndScore(){
		
		projectDetail = new ArrayList<Integer>();
		score = new ArrayList<Integer>();
		List<ProjectScore> projectDetailList  = new ArrayList<ProjectScore>(); 	
		Map map = ActionContext.getContext().getSession();
		int studentId = (Integer)map.get("userID");
//		projectDetailList = projectDetailStateService.showProjectDetailList();		//need the student's id
		projectDetailList = projectDetailStateService.showProjectDetailListByProjectID(1);	
		
		for(int i = 6, j = 0; i < projectDetailList.size(); i++,j++){//
			projectDetail.add(projectDetailList.get(i).getProjectState());
			score.add(projectDetailList.get(i).getProjectScore());
			totalScore += score.get(j);
		}
		return "success";
	}
	
	
}
