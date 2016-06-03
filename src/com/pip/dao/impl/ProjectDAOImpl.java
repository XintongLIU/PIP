package com.pip.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pip.dao.IProjectDAO;
import com.pip.domain.Project;


public class ProjectDAOImpl extends HibernateDaoSupport implements IProjectDAO{

	@Override
	public Project findByID(Integer id) {
		return (Project)getHibernateTemplate().get(Project.class, id);
	}

	@Override
	public List<Project> findAll() {
		return (List<Project>)getHibernateTemplate().find("from Project");
	}

	@Override
	public Integer save(Project project) {
		return (Integer)getHibernateTemplate().save(project);
	}

	@Override
	public void update(Project project) {
		getHibernateTemplate().update(project);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));
	}

	@Override
	public List<Project> findByTeacherID(Integer teacherID) {
		return (List<Project>)getHibernateTemplate().find("from Project p where p.teacherID=", teacherID);
	}
	
}