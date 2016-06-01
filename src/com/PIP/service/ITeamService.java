package com.pip.service;

import java.util.List;

import com.pip.domain.Student;
import com.pip.domain.Team;

public interface ITeamService {
	Integer insertTeam(Team team);
	void deleteTeam(Integer teamID);
	void updateTeam(Team team);
	Team seleteTeam(Integer id);
	List<Team> showTeamList();
	List<Student> showStudentByTeamID(Integer teamID);
}
