package com.pip.service;

import java.io.File;
import java.util.List;

import com.pip.domain.FileForm;
public interface IFileFormService {
	Integer getCurrentProjectID(Integer studentID);
	Integer getCurrentProjectIDbyTeamID(Integer teamID);
	String uploadFile(FileForm fileform, File file, String absolutepath);
	boolean deleteFile(int fileID, String directory);
	List<FileForm> showProjectFile(int projectID);
	List<FileForm> showCode(int projectID);
	List<FileForm> showProjectDoc(int projectID);
	List<FileForm> showRecord(int projectID);
	String deploy(int projectID, String directory); 
}
