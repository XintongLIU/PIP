package com.pip.service.impl;

import java.util.List;

import com.pip.dao.ITestCase;
import com.pip.domain.TestCase;
import com.pip.service.ITestCaseService;

public class TestCaseServiceImpl implements ITestCaseService {
	ITestCase testCaseDao;
	
	

	public ITestCase getTestCaseDao() {
		return testCaseDao;
	}

	public void setTestCaseDao(ITestCase testCaseDao) {
		this.testCaseDao = testCaseDao;
	}

	@Override
	public List<TestCase> showTestCaseList() {
		// TODO Auto-generated method stub
		
		return (List<TestCase>) testCaseDao.findAll();
	}

	@Override
	public TestCase showTestCaseById(int testCaseId) {
		// TODO Auto-generated method stub
		return (TestCase) testCaseDao.findTestCaseById(testCaseId);
	}

}
