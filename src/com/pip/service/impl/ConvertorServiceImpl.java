package com.pip.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.pip.dao.impl.ProjectDAOImpl;
import com.pip.dao.impl.TeamDAOImpl;
import com.pip.domain.Project;
import com.pip.domain.Team;
import com.pip.service.IConvertorService;
import com.pip.util.TrTeam;

public class ConvertorServiceImpl implements IConvertorService{
	TeamDAOImpl teamDAO;
	ProjectDAOImpl projectDAO;

	@Override
	public TrTeam teamToTrTeam(Team team) {
		Project project = projectDAO.findProjectById(team.getProjectID());
		TrTeam trTeam = new TrTeam();
		trTeam.setProjectID(project.getProjectID());
		trTeam.setProjectName(project.getProjectName());
		trTeam.setProjectScore(project.getProjectScore());
		trTeam.setTeamID(team.getTeamID());
		trTeam.setTeamName(team.getTeamName());
		return trTeam;
	}

	@Override
	public List<TrTeam> teamListToTrTeamList(List<Team> teamList) {
		List<TrTeam> trTeamList = new ArrayList<TrTeam>();
		for(Team t: teamList){
			trTeamList.add(teamToTrTeam(t));
		}
		return trTeamList;
	}

	public TeamDAOImpl getTeamDAO() {
		return teamDAO;
	}

	public void setTeamDAO(TeamDAOImpl teamDAO) {
		this.teamDAO = teamDAO;
	}

	public ProjectDAOImpl getProjectDAO() {
		return projectDAO;
	}

	public void setProjectDAO(ProjectDAOImpl projectDAO) {
		this.projectDAO = projectDAO;
	}

	
}
