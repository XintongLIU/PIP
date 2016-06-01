package com.pip.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pip.dao.INewsDao;
import com.pip.domain.News;

public class NewsDaoImpl extends HibernateDaoSupport implements INewsDao {
	public Integer save(News news){
		return (Integer)getHibernateTemplate().save(news);
	}
}
