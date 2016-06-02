package com.pip.service.impl;

import java.util.List;

import com.pip.dao.IProjectScoreDAO;
import com.pip.dao.impl.ProjectScoreDAOImpl;
import com.pip.domain.ProjectScore;
import com.pip.service.IProjectDetailService;

public class ProjectDetailServiceImpl implements IProjectDetailService {

	//IOC DAO
	ProjectScoreDAOImpl projectScoreDAO;
	
	
	@Override
	public List<ProjectScore> showProjectDetailList() {
		return projectScoreDAO.findAll();
	}

	@Override
	public void updateProjectDetail(ProjectScore projectScore) {
		projectScoreDAO.update(projectScore);
	}

	@Override
	public List<ProjectScore> showProjectDetailListByProjectID(Integer projectID) {
		return projectScoreDAO.findProjectScoreById(projectID);
	}

	public ProjectScoreDAOImpl getProjectScoreDAO() {
		return projectScoreDAO;
	}

	public void setProjectScoreDAO(ProjectScoreDAOImpl projectScoreDAO) {
		this.projectScoreDAO = projectScoreDAO;
	}

	
}
