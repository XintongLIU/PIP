package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pip.dao.ITeamDAO;
import com.pip.domain.Team;
@Repository
public class TeamDAOImpl extends BaseDAOImpl<Team> implements ITeamDAO{

	@Override
	public List<Team> find(String hql, Team[] param) {
		// TODO Auto-generated method stub
		return super.find("from Team where teamID= :param", param);
	}

	@Override
	public Team get(String hql, Team[] param) {
		// TODO Auto-generated method stub
		return super.get(Team.class, param);
	}

	@Override
	public Long count(String hql, Team[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer executeHql(String hql, Team[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> findAll() {
		// TODO Auto-generated method stub
		List<Team> list = new ArrayList<Team>();
		list = super.find("from Team");
		return list;
	}

	@Override
	public Team findTeamById(int teamID) {
		// TODO Auto-generated method stub
		List<Team> list = super.find("from Team where teamID = " + teamID);
		return list.get(0);
	}

	@Override
	public boolean insertTeam(Team team) {
		// TODO Auto-generated method stub
		try{
			super.save(team);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteTeam(Team team) {
		// TODO Auto-generated method stub
		try{
//			super.delete(team);
			super.executeHql("delete from Team where teamID = " + team.getTeamID());
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}

	

}
