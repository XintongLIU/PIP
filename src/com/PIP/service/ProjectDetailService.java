package com.pip.service;

import java.util.List;

import com.pip.domain.ProjectScore;

public interface ProjectDetailService {
	List<ProjectScore> showProjectDetailList();
	void updateProjectDetail(ProjectScore projectScore);
}
