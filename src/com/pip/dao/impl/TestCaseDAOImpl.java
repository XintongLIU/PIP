package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pip.dao.ITestCase;
import com.pip.domain.TestCase;
@Repository
public class TestCaseDAOImpl extends BaseDAOImpl<TestCase> implements ITestCase{

	@Override
	public List<TestCase> find(String hql, TestCase[] param) {
		// TODO Auto-generated method stub
		return super.find("from TestCase where testCaseID= :param",param);
	}

	@Override
	public TestCase get(String hql, TestCase[] param) {
		// TODO Auto-generated method stub
		return super.get(TestCase.class, param);
	}

	@Override
	public Long count(String hql, TestCase[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer executeHql(String hql, TestCase[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TestCase> findAll() {
		// TODO Auto-generated method stub
		List<TestCase> list = new ArrayList<TestCase>();
		list = super.find("from TestCase");
		return list;
	}

	@Override
	public TestCase findTestCaseById(int testCaseID) {
		// TODO Auto-generated method stub
		List<TestCase> list = super.find("from TestCase where testCaseID = " + testCaseID);
		return list.get(0);
	}

	@Override
	public boolean insertTestCase(TestCase testCase) {
		// TODO Auto-generated method stub
		try{
			super.save(testCase);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteTestCase(TestCase testCase) {
		// TODO Auto-generated method stub
		try{
//			super.delete(testCase);
			super.executeHql("delete from TestCase where testCaseID = " + testCase.getTestCaseID());
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
