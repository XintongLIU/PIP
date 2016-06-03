package com.pip.dao.impl;


import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.pip.dao.IFileFormDAO;
import com.pip.domain.FileForm;


public class FileFormDAOImpl extends HibernateDaoSupport implements IFileFormDAO{

	public List<FileForm> findAll() {
		// TODO Auto-generated method stub
		return (List<FileForm>)getHibernateTemplate().find("from FileForm");
	}
	
	@Override
	public FileForm findFileById(int fileID) {
		// TODO Auto-generated method stub
		return (FileForm)getHibernateTemplate().get(FileForm.class, fileID);
	}
	
	@Override
	public List<FileForm> findFileByPIdandState(int projectID, int state) {
		// TODO Auto-generated method stub
		return (List<FileForm>)getHibernateTemplate().find("from FileForm where ProjectID = " + projectID + " and State = " + state);
	}
	
	@Override
	public List<FileForm> findFileByPath(String path) {
		// TODO Auto-generated method stub
		return (List<FileForm>)getHibernateTemplate().find("from FileForm where Path = '" + path + "'");
	}
	
	@Override
	public boolean insertFile(FileForm File) {
		// TODO Auto-generated method stub
		try{
			getHibernateTemplate().save(File);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteFile(int fileID) {
		// TODO Auto-generated method stub
		try{
			getHibernateTemplate().delete(findFileById(fileID));
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
