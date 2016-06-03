package com.pip.action;

import java.util.List;

import com.pip.dao.impl.TeamDAOImpl;
import com.pip.domain.Team;
import com.pip.service.IConvertorService;
import com.pip.util.TrTeam;

public class TeamAction {
	List<TrTeam> trTeamList;
	Integer teacherID = 1;
	TeamDAOImpl teamDAO;
	IConvertorService convertorService;
	
	public String showTrTeamList(){
		List<Team> teamList = teamDAO.findTeamByTeacherId(teacherID);
		trTeamList = convertorService.teamListToTrTeamList(teamList);
		return "success";
	}

	public List<TrTeam> getTrTeamList() {
		return trTeamList;
	}

	public void setTrTeamList(List<TrTeam> trTeamList) {
		this.trTeamList = trTeamList;
	}

	public Integer getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(Integer teacherID) {
		this.teacherID = teacherID;
	}

	public TeamDAOImpl getTeamDAO() {
		return teamDAO;
	}

	public void setTeamDAO(TeamDAOImpl teamDAO) {
		this.teamDAO = teamDAO;
	}

	public IConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(IConvertorService convertorService) {
		this.convertorService = convertorService;
	}
	
	
}
