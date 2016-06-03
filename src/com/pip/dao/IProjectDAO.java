package com.pip.dao;

import java.util.List;

import com.pip.domain.Project;

public interface IProjectDAO {
	Project findByID(Integer id);
	List<Project> findAll();
	Integer save(Project project);
	void update(Project project);
	void delete(Integer id);
	List<Project> findByTeacherID(Integer teacherID);
}
