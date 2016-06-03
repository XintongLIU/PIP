package com.pip.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.pip.domain.Student;
import com.pip.service.IStudentService;

public class OnlineStudentAction {
	
	//IOC Service
	IStudentService studentService;
	
	//out
	List<Student> studentList;
	
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		Integer teacherID = (Integer)session.get("userID");
		studentList = studentService.showStudentByTeacherID(teacherID);
		return "success";
	}

	public IStudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
	}

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
	
	
	
}
