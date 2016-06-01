package com.pip.service;

import com.pip.dao.INewsDao;

public interface IHelloWorldService {
	
	public void addNew();

	public INewsDao getNewsDao() ;

	public void setNewsDao(INewsDao newsDao);
	
}
