package com.pip.action;

import java.io.File;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.pip.domain.FileForm;
import com.pip.service.IFileFormService;

public class FileAction {
	File file;
	String fileContentType;
	String fileFileName;
	String result;
	Integer userID;
	Integer fileID;
	IFileFormService fileFormService;
	List<FileForm> projectFileList;
	List<FileForm> codeList;
	List<FileForm> projectDocList;
	List<FileForm> recordList;

	// Getters and Setters
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Integer getFileID() {
		return fileID;
	}

	public void setFileID(Integer fileID) {
		this.fileID = fileID;
	}

	public IFileFormService getFileFormService() {
		return fileFormService;
	}

	public void setFileFormService(IFileFormService fileFormService) {
		this.fileFormService = fileFormService;
	}

	public List<FileForm> getProjectFileList() {
		return projectFileList;
	}

	public void setProjectFileList(List<FileForm> projectFileList) {
		this.projectFileList = projectFileList;
	}

	public List<FileForm> getCodeList() {
		return codeList;
	}

	public void setCodeList(List<FileForm> codeList) {
		this.codeList = codeList;
	}

	public List<FileForm> getProjectDocList() {
		return projectDocList;
	}

	public void setProjectDocList(List<FileForm> projectDocList) {
		this.projectDocList = projectDocList;
	}

	public List<FileForm> getRecordList() {
		return recordList;
	}

	public void setRecordList(List<FileForm> recordList) {
		this.recordList = recordList;
	}

	// 上传项目工程文件
	public String uploadProjectFile() {
		int projectID = 1;
		FileForm fileform = new FileForm();
		String path = "uploadfiles/projectfiles/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		String absolutepath = directory + path;
		fileform.setFileName(fileFileName);
		fileform.setPath(path);
		fileform.setProjectID(projectID);
		fileform.setState(1);
		result = fileFormService.uploadFile(fileform, file, absolutepath);
		return result;
	}

	// 上传项目源代码文件
	public String uploadCode() {
		int projectID = 1;
		FileForm fileform = new FileForm();
		String path = "uploadfiles/sourcecode/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		String absolutepath = directory + path;
		fileform.setFileName(fileFileName);
		fileform.setPath(path);
		fileform.setProjectID(projectID);
		fileform.setState(2);
		result = fileFormService.uploadFile(fileform, file, absolutepath);
		return result;
	}

	// 上传项目文档
	public String uploadProjectDoc() {
		int projectID = 1;
		FileForm fileform = new FileForm();
		String path = "uploadfiles/projectrecords/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		String absolutepath = directory + path;
		fileform.setFileName(fileFileName);
		fileform.setPath(path);
		fileform.setProjectID(projectID);
		fileform.setState(3);
		result = fileFormService.uploadFile(fileform, file, absolutepath);
		return result;
	}

	// 上传项目工时文档
	public String uploadRecord() {
		int projectID = 1;
		FileForm fileform = new FileForm();
		String path = "uploadfiles/projectdocs/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		String absolutepath = directory + path;
		fileform.setFileName(fileFileName);
		fileform.setPath(path);
		fileform.setProjectID(projectID);
		fileform.setState(4);
		result = fileFormService.uploadFile(fileform, file, absolutepath);
		return result;
	}

	// 获取项目工程文件
	public String showProjectFile() {
		int projectID = 1;
		projectFileList = fileFormService.showProjectFile(projectID);
		return "success";
	}

	// 获取项目源代码文件
	public String showCode() {
		int projectID = 1;
		codeList = fileFormService.showCode(projectID);
		return "success";
	}

	// 获取项目工程文档
	public String showProjectDoc() {
		int projectID = 1;
		projectDocList = fileFormService.showProjectDoc(projectID);
		return "success";
	}

	// 获取项目工时记录
	public String showRecord() {
		int projectID = 1;
		recordList = fileFormService.showRecord(projectID);
		return "success";
	}

	// 删除文件
	public String deleteFile() {
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		if (fileFormService.deleteFile(fileID, directory))
			result = "success";
		else
			result = "fail";
		return result;
	}
}
