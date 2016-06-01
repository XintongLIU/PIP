package com.pip.action;

import java.util.ArrayList;
import java.util.List;

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


	public String showState(){

		projectDetail = new ArrayList<Integer>();
		
		List<ProjectScore> projectDetailList  = new ArrayList<ProjectScore>(); 
		int studentId = 1;
		projectDetailList = projectDetailStateService.showProjectDetailList();		//need the student's id
		
		for(int i = 0; i < 6; i++){//projectDetailList.size()
			projectDetail.add(projectDetailList.get(i).getProjectState());
		}
		
		return "success";
	}
	
	public String showStateAndScore(){
		
		projectDetail = new ArrayList<Integer>();
		score = new ArrayList<Integer>();
		List<ProjectScore> projectDetailList  = new ArrayList<ProjectScore>(); 	
		int studentId = 1;
		projectDetailList = projectDetailStateService.showProjectDetailList();		//need the student's id
		
		for(int i = 0; i < projectDetailList.size(); i++){//
			projectDetail.add(projectDetailList.get(i).getProjectState());
			score.add(projectDetailList.get(i).getProjectScore());
			totalScore += score.get(i);
		}
		return "success";
	}
	
	
}
