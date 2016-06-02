package com.pip.dao;

import java.util.List;
import com.pip.domain.ProjectScore;
public interface IProjectScoreDAO{
	public List<ProjectScore> findAll();		//返回所有的ProjectScore信息
	public List<ProjectScore> findProjectScoreById(int projectID);		//通过ProjectScoreID查找ProjectScore信息
	public Integer insertProjectScore(ProjectScore projectScore);			//插入ProjectScore信息
	public void deleteProjectScore(ProjectScore projectScore);
	public void update(ProjectScore projectScore);
}
