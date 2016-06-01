package com.pip.dao;

import java.util.List;

import com.pip.domain.TestCase;

public interface ITestCase {
	public List<TestCase> findAll();		//返回所有的TestCase信息
	public TestCase findTestCaseById(int testCaseID);		//通过TestCaseID查找TestCase信息
	public boolean insertTestCase(TestCase testCase);			//插入TestCase信息
	public boolean deleteTestCase(TestCase testCase);		//删除指定TestCase
}
