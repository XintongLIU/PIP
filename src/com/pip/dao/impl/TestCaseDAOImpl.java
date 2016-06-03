package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.pip.dao.ITestCase;
import com.pip.domain.TestCase;
@Repository
public class TestCaseDAOImpl extends HibernateDaoSupport implements ITestCase{

	@Override
	public List<TestCase> findAll() {
		// TODO Auto-generated method stub
		return (List<TestCase>)getHibernateTemplate().find("from TestCase");
	}

	@Override
	public TestCase findTestCaseById(int testCaseID) {
		// TODO Auto-generated method stub
		return (TestCase)getHibernateTemplate().get(TestCase.class, testCaseID);
	}

	@Override
	public Integer insertTestCase(TestCase testCase) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(testCase);
	}

	@Override
	public void deleteTestCase(TestCase testCase) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(testCase);
	}

	@Override
	public void update(TestCase testCase) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(testCase);
	}



}
