package com.pip.action;

import java.util.ArrayList;
import java.util.List;

import com.pip.domain.TestCase;
import com.pip.service.ITestCaseService;

public class ShowTestCaseAction {
	ITestCaseService testCaseService;
	List<TestCase> testCaseList;
	List<TestCase> functionTestCaseList;
	List<TestCase> performanceTestCaseList;
	List<TestCase> stressTestCaseList;
	
	public String showTestCaseList(){
		testCaseList = new ArrayList<TestCase>();
		functionTestCaseList = new ArrayList<TestCase>();
		performanceTestCaseList = new ArrayList<TestCase>();
		stressTestCaseList = new ArrayList<TestCase>();
		
		testCaseList = testCaseService.showTestCaseList();
		
		System.out.println(testCaseList.size());
		for(int i = 0; i < 15; i++){
			if(i < 5){
				functionTestCaseList.add(testCaseList.get(i));
			}else if( i < 10){
				performanceTestCaseList.add(testCaseList.get(i));
			}else{
				stressTestCaseList.add(testCaseList.get(i));
			}
		}
		
		
		return "success";
	}


	public ITestCaseService getTestCaseService() {
		return testCaseService;
	}


	public void setTestCaseService(ITestCaseService testCaseService) {
		this.testCaseService = testCaseService;
	}


	public List<TestCase> getTestCaseList() {
		return testCaseList;
	}


	public void setTestCaseList(List<TestCase> testCaseList) {
		this.testCaseList = testCaseList;
	}


	public List<TestCase> getFunctionTestCaseList() {
		return functionTestCaseList;
	}


	public void setFunctionTestCaseList(List<TestCase> functionTestCaseList) {
		this.functionTestCaseList = functionTestCaseList;
	}


	public List<TestCase> getPerformanceTestCaseList() {
		return performanceTestCaseList;
	}


	public void setPerformanceTestCaseList(List<TestCase> performanceTestCaseList) {
		this.performanceTestCaseList = performanceTestCaseList;
	}


	public List<TestCase> getStressTestCaseList() {
		return stressTestCaseList;
	}


	public void setStressTestCaseList(List<TestCase> stressTestCaseList) {
		this.stressTestCaseList = stressTestCaseList;
	}
	
	
	
}
