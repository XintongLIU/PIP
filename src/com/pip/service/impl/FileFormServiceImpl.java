package com.pip.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

import com.pip.domain.FileForm;
import com.pip.domain.Student;
import com.pip.domain.Team;
import com.pip.dao.IFileFormDAO;
import com.pip.dao.IStudentDAO;
import com.pip.dao.ITeamDAO;
import com.pip.service.IFileFormService;

public class FileFormServiceImpl implements IFileFormService {

	IFileFormDAO fileDao;
	IStudentDAO studentDAO;
	ITeamDAO teamDAO;
	
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

}
