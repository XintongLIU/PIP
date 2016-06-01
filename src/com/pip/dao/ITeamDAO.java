package com.pip.dao;

import java.util.List;

import com.pip.domain.Team;

public interface ITeamDAO {
	public List<Team> findAll();		//返回所有的Team信息
	public Team findTeamById(int teamID);		//通过teamID查找Team信息
	public List<Team> findTeamByTeacherId(int teacherID);
	public boolean insertTeam(Team team);			//插入Team信息
	public boolean deleteTeam(Team team);		//删除指定Team
}
