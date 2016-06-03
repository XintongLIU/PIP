package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.pip.dao.ITeamDAO;
import com.pip.domain.Project;
import com.pip.domain.Teacher;
import com.pip.domain.Team;
@Repository
public class TeamDAOImpl extends HibernateDaoSupport implements ITeamDAO{

	@Override
	public List<Team> findAll() {
		// TODO Auto-generated method stub
		return (List<Team>)getHibernateTemplate().find("from Team");
	}

	@Override
	public Team findTeamById(int teamID) {
		// TODO Auto-generated method stub
		return (Team)getHibernateTemplate().get(Team.class, teamID);
	}

	@Override
	public List<Team> findTeamByTeacherId(int teacherID) {
		// TODO Auto-generated method stub
		return (List<Team>)getHibernateTemplate().find("from Team as t where t.teacherID = ?",teacherID);
	}

	@Override
	public Integer insertTeam(Team team) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(team);
	}

	@Override
	public void deleteTeam(Team team) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(team);
	}

	@Override
	public void update(Team team) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(team);
	}


	

}
