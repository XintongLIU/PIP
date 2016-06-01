package com.pip.service;

import java.util.List;

import com.pip.domain.ProjectScore;

public interface IProjectDetailService {
	List<ProjectScore> showProjectDetailList();
	void updateProjectDetail(ProjectScore projectScore);
}
