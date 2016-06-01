package com.pip.service;

import java.util.List;

import com.pip.domain.Team;
import com.pip.util.TrTeam;

public interface IConvertorService {
	TrTeam teamToTrTeam(Team team);
	List<TrTeam> teamListToTrTeamList(List<Team> teamList);
}
