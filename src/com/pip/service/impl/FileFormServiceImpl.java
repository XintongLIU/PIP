package com.pip.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

import com.pip.domain.FileForm;
import com.pip.domain.ProjectScore;
import com.pip.domain.Student;
import com.pip.domain.Team;
import com.pip.dao.IFileFormDAO;
import com.pip.dao.IProjectScoreDAO;
import com.pip.dao.IStudentDAO;
import com.pip.dao.ITeamDAO;
import com.pip.service.IFileFormService;

public class FileFormServiceImpl implements IFileFormService {

	IFileFormDAO fileDao;
	IStudentDAO studentDAO;
	ITeamDAO teamDAO;
	IProjectScoreDAO projectScoreDAO;
	@Override
	public Integer getCurrentProjectID(Integer studentID) {
		Student currentstudent = studentDAO.findStudentById(studentID);
		return currentstudent.getProjectID();
	}
	

	@Override
	public Integer getCurrentProjectIDbyTeamID(Integer teamID) {
		// TODO Auto-generated method stub
		Team currentteam = teamDAO.findTeamById(teamID);
		return currentteam.getProjectID();
	}
	
	@Override
	public String uploadFile(FileForm fileform, File file, String absolutepath) {
		if (fileDao.findFileByPath(fileform.getPath()).size() != 0)
			return "duplicate";
		try {
			File newfile = new File(absolutepath);
			if (!newfile.getParentFile().exists())
				newfile.getParentFile().mkdirs();
			if (!newfile.exists())
				newfile.createNewFile();
			FileOutputStream fos = new FileOutputStream(newfile);
			FileInputStream fis = new FileInputStream(file);
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
			}
			fos.close();
			fis.close();
			fileDao.insertFile(fileform);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}

	@Override
	public boolean deleteFile(int fileID, String directory) {
		// TODO Auto-generated method stub
		FileForm dbfile = fileDao.findFileById(fileID);
		String absolutepath = directory + dbfile.getPath();
		if (fileDao.deleteFile(fileID)) {
			try {
				File filetodelete = new File(absolutepath);
				filetodelete.delete();
				return true;
			} catch (Exception e) {
				return false;
			}
		} else
			return false;

	}
	
	@Override
	public List<FileForm> showProjectFile(int projectID) {
		return fileDao.findFileByPIdandState(projectID, 1);
	}

	@Override
	public List<FileForm> showCode(int projectID) {
		// TODO Auto-generated method stub
		return fileDao.findFileByPIdandState(projectID, 2);
	}

	@Override
	public List<FileForm> showProjectDoc(int projectID) {
		// TODO Auto-generated method stub
		return fileDao.findFileByPIdandState(projectID, 3);
	}

	@Override
	public List<FileForm> showRecord(int projectID) {
		// TODO Auto-generated method stub
		return fileDao.findFileByPIdandState(projectID, 4);
	}
	
	@Override
	public String deploy(int projectID, String directory) {
		// TODO Auto-generated method stub
		FileForm fileForm = fileDao.findFileByPIdandState(projectID, 1).get(0);
		String[] strs = directory.split("/");
		String tomcatroot = "";
		String fileTocopyPath = directory + fileForm.getPath();
		for(int i = 0; i < strs.length - 1; i++){
			tomcatroot += strs[i];
			tomcatroot += "/";
		}
		String fileTodeployPath = tomcatroot + fileForm.getFileName();
		try {
			File fileTocopy = new File(fileTocopyPath);
			File fileTodeploy = new File(fileTodeployPath);
			if (!fileTodeploy.getParentFile().exists())
				fileTodeploy.getParentFile().mkdirs();
			if (!fileTodeploy.exists())
				fileTodeploy.createNewFile();
			else
				return "duplicate";
			FileOutputStream fos = new FileOutputStream(fileTodeploy);
			FileInputStream fis = new FileInputStream(fileTocopy);
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
			}
			fos.close();
			fis.close();
			List<ProjectScore> scores = projectScoreDAO.findProjectScoreById(projectID);
			for(ProjectScore score : scores){
				if(score.getDetailType() == 1){
					score.setProjectState(1);
					projectScoreDAO.update(score);
					break;
				}	
			}
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
	
	// Getters and Setters
	public IFileFormDAO getFileDao() {
		return fileDao;
	}

	public void setFileDao(IFileFormDAO fileDao) {
		this.fileDao = fileDao;
	}

	public IStudentDAO getStudentDAO() {
		return studentDAO;
	}

	public void setStudentDAO(IStudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}

	public ITeamDAO getTeamDAO() {
		return teamDAO;
	}

	public void setTeamDAO(ITeamDAO teamDAO) {
		this.teamDAO = teamDAO;
	}


	public IProjectScoreDAO getProjectScoreDAO() {
		return projectScoreDAO;
	}


	public void setProjectScoreDAO(IProjectScoreDAO projectScoreDAO) {
		this.projectScoreDAO = projectScoreDAO;
	}
	
}
