package com.pip.dao;

import java.util.List;

import com.pip.domain.FileForm;

public interface IFileFormDAO {
	public List<FileForm> findAll();
	public FileForm findFileById(int fileID);
	public List<FileForm> findFileByPIdandState(int projectID, int state);
	public List<FileForm> findFileByPath(String path);
	public boolean insertFile(FileForm File);
	public boolean deleteFile(int fileID);
}
