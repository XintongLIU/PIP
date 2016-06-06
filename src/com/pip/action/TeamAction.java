package com.pip.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.pip.dao.impl.TeamDAOImpl;
import com.pip.domain.Team;
import com.pip.service.IConvertorService;
import com.pip.util.TrTeam;

public class TeamAction {
	List<TrTeam> trTeamList;
	TeamDAOImpl teamDAO;
	IConvertorService convertorService;
	
	public String showTrTeamList(){
		Map session = ActionContext.getContext().getSession();
		Integer teacherID = (Integer)session.get("userID");
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
