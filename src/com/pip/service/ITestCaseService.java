package com.pip.service;

import java.util.List;

import com.pip.domain.TestCase;

public interface ITestCaseService {
	public List<TestCase> showTestCaseList();
	public TestCase showTestCaseById(int testCaseId);
}
