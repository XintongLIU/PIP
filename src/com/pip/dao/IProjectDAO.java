package com.pip.dao;

import java.util.List;

import com.pip.domain.Project;

public interface IProjectDAO {
	public List<Project> findAll();		//返回所有的Project信息
	public Project findProjectById(int projectID);		//通过ProjectID查找Project信息
	public List<Project> findProjectByTeacherId(int teacherID);
	public boolean insertProject(Project project);			//插入Project信息
	public boolean deleteProject(Project project);		//删除指定Project
}
