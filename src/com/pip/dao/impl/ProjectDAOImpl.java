package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pip.dao.IProjectDAO;
import com.pip.domain.Project;
import com.pip.domain.Teacher;
import com.pip.domain.Project;
@Repository
public class ProjectDAOImpl extends BaseDAOImpl<Project>implements IProjectDAO {

	@Override
	public List<Project> findAll() {
		// TODO Auto-generated method stub
		List<Project> list = new ArrayList<Project>();
		list = super.find("from Project");
		return list;
	}

	@Override
	public Project findProjectById(int projectID) {
		// TODO Auto-generated method stub
		System.out.println("ProjectID " +projectID);
		List<Project> list = super.find("from Project where projectID = " + projectID);
		return list.get(0);
	}

	@Override
	public List<Project> findProjectByTeacherId(int teacherID) {
		// TODO Auto-generated method stub
		System.out.println("ProjectID " +teacherID);
		List<Project> list = super.find("from Project where teacherID = " + teacherID);
		return list;
	}

	@Override
	public boolean insertProject(Project project) {
		// TODO Auto-generated method stub
		try{
			System.out.println("Project " + project.getProjectName());
			super.save(project);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteProject(Project project) {
		// TODO Auto-generated method stub
		try{
//			super.delete(project);
//			super.executeHql("");
			super.executeHql("delete from Project where projectID = " + project.getProjectID());
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
