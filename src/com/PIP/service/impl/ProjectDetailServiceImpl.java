package com.pip.service.impl;

import java.util.List;

import com.pip.dao.IProjectScoreDAO;
import com.pip.dao.IStudentDAO;
import com.pip.dao.impl.ProjectScoreDAOImpl;
import com.pip.domain.ProjectScore;
import com.pip.domain.Student;
import com.pip.service.IProjectDetailService;

public class ProjectDetailServiceImpl implements IProjectDetailService {

	//IOC DAO
	ProjectScoreDAOImpl projectScoreDAO;
	IStudentDAO studentDAO;
	
	
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
	
	public List<ProjectScore> showProjectDetailListByStudentID(Integer studentID){
		Student student = studentDAO.findStudentById(studentID);
		Integer projectID = student.getProjectID();
		return showProjectDetailListByProjectID(projectID);
	}

	public ProjectScoreDAOImpl getProjectScoreDAO() {
		return projectScoreDAO;
	}

	public void setProjectScoreDAO(ProjectScoreDAOImpl projectScoreDAO) {
		this.projectScoreDAO = projectScoreDAO;
	}

	public IStudentDAO getStudentDAO() {
		return studentDAO;
	}

	public void setStudentDAO(IStudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}

	
}
