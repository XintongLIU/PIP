package com.pip.service.impl;

import com.pip.dao.INewsDao;
import com.pip.domain.News;
import com.pip.service.IHelloWorldService;

public class HelloWorldServiceImpl implements IHelloWorldService{
	
	INewsDao newsDao;
	
	public void addNew(){
		News news = new News();
		news.setTitle("Service写的，用了dao！并且代码编码为utf-8");
		newsDao.save(news);
	}

	public INewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(INewsDao newsDao) {
		this.newsDao = newsDao;
	}
	
}
