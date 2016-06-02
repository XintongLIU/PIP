package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.pip.dao.IProjectScoreDAO;
import com.pip.domain.ProjectScore;
import com.pip.domain.Teacher;

public class ProjectScoreDAOImpl extends HibernateDaoSupport implements IProjectScoreDAO {

	@Override
	public List<ProjectScore> findAll() {
		// TODO Auto-generated method stub
		return (List<ProjectScore>)getHibernateTemplate().find("from ProjectScore");
	}

	@Override
	public List<ProjectScore> findProjectScoreById(int projectID) {
		// TODO Auto-generated method stub
		return (List<ProjectScore>)getHibernateTemplate().find("from ProjectScore as p where p.projectID = ?",projectID);
	}

	@Override
	public Integer insertProjectScore(ProjectScore projectScore) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(projectScore);
//		return projectScore.getDetailID();		
	}

	@Override
	public void deleteProjectScore(ProjectScore projectScore) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(projectScore);
	}
	
	@Override
	public void update(ProjectScore projectScore){
		getHibernateTemplate().update(projectScore);
	}

	
}
