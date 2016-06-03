package com.pip.domain;

public class FileForm {
	private Integer FileID;
	private String FileName;
	private String Path;
	private Integer ProjectID;
	private Integer State;
	
	public Integer getFileID() {
		return FileID;
	}
	public void setFileID(Integer fileID) {
		FileID = fileID;
	}
	public String getFileName() {
		return FileName;
	}
	public void setFileName(String fileName) {
		FileName = fileName;
	}
	public String getPath() {
		return Path;
	}
	public void setPath(String path) {
		Path = path;
	}
	public Integer getProjectID() {
		return ProjectID;
	}
	public void setProjectID(Integer projectID) {
		ProjectID = projectID;
	}
	public Integer getState() {
		return State;
	}
	public void setState(Integer state) {
		State = state;
	}
	
}
