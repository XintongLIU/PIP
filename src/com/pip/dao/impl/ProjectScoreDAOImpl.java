package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pip.dao.IProjectScoreDAO;
import com.pip.domain.ProjectScore;
import com.pip.domain.Teacher;

@Repository
public class ProjectScoreDAOImpl extends BaseDAOImpl<ProjectScore> implements IProjectScoreDAO {

	@Override
	public List<ProjectScore> findAll() {
		// TODO Auto-generated method stub
		List<ProjectScore> list = new ArrayList<ProjectScore>();
		list = super.find("from ProjectScore");
		return list;
	}

	@Override
	public ProjectScore findProjectScoreById(int projectID) {
		// TODO Auto-generated method stub
		
		List<ProjectScore> list = super.find("from ProjectScore where projectID = " + projectID);
		return list.get(0);
	}

	@Override
	public boolean insertProjectScore(ProjectScore ProjectScore) {
		// TODO Auto-generated method stub
		try{
			super.save(ProjectScore);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteProjectScore(ProjectScore ProjectScore) {
		// TODO Auto-generated method stub
		try{
//			super.delete(ProjectScore);
			super.executeHql("delete from ProjectScore where projectID = " + ProjectScore.getProjectID());
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
