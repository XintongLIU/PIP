package com.pip.action;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.pip.domain.FileForm;
import com.pip.service.IFileFormService;

public class FileAction {
	File file;
	String fileContentType;
	String fileFileName;
	String result;
	Integer userID;
	Integer fileID;
	Integer teamID;
	IFileFormService fileFormService;
	List<FileForm> projectFileList;
	List<FileForm> codeList;
	List<FileForm> projectDocList;
	List<FileForm> recordList;
	String projectfilename;
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
	
	public Integer getTeamID() {
		return teamID;
	}

	public void setTeamID(Integer teamID) {
		this.teamID = teamID;
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
	
	public String getProjectfilename() {
		return projectfilename;
	}

	public void setProjectfilename(String projectfilename) {
		this.projectfilename = projectfilename;
	}

	Integer getCurrentProjectId(){
		Map session = ActionContext.getContext().getSession();
		Integer userID = (Integer) session.get("userID");
		Integer userType = (Integer) session.get("userType");
		if(userType == 1)
		  return fileFormService.getCurrentProjectID(userID);
		else
		  return fileFormService.getCurrentProjectIDbyTeamID(teamID);
	}
	
	// 上传项目工程文件
	public String uploadProjectFile() {
		int projectID = getCurrentProjectId();
		FileForm fileform = new FileForm();
		String path = "uploadfiles/projectfiles/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		if(directory.charAt(directory.length() - 2) != '/')
			directory += "/";
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
		int projectID = getCurrentProjectId();
		FileForm fileform = new FileForm();
		String path = "uploadfiles/sourcecode/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		if(directory.charAt(directory.length() - 2) != '/')
			directory += "/";
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
		int projectID = getCurrentProjectId();
		FileForm fileform = new FileForm();
		String path = "uploadfiles/projectrecords/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		if(directory.charAt(directory.length() - 2) != '/')
			directory += "/";
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
		int projectID = getCurrentProjectId();
		FileForm fileform = new FileForm();
		String path = "uploadfiles/projectdocs/" + projectID + "/"
				+ fileFileName;
		String directory = ServletActionContext.getServletContext()
				.getRealPath("/");
		if(directory.charAt(directory.length() - 2) != '/')
			directory += "/";
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
		int projectID = getCurrentProjectId();
		projectFileList = fileFormService.showProjectFile(projectID);
		return "success";
	}

	// 获取项目源代码文件
	public String showCode() {
		int projectID = getCurrentProjectId();
		codeList = fileFormService.showCode(projectID);
		return "success";
	}

	// 获取项目工程文档
	public String showProjectDoc() {
		int projectID = getCurrentProjectId();
		projectDocList = fileFormService.showProjectDoc(projectID);
		return "success";
	}

	// 获取项目工时记录
	public String showRecord() {
		int projectID = getCurrentProjectId();
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
	
	//部署工程
	public String deploy(){
		int projectID = getCurrentProjectId();
		String directory = ServletActionContext.getServletContext().getRealPath("/");
		result = fileFormService.deploy(projectID, directory);
		return result;
	}
}
