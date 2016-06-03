package com.pip.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.pip.domain.Admin;
import com.pip.domain.Student;
import com.pip.domain.Teacher;
import com.pip.service.IAdminService;
import com.pip.service.IStudentService;
import com.pip.service.ITeacherService;

/**
 * JSON Action
 * @author Zhiqi Yang
 *
 */
public class GetUserNameAction {
	
	//IOC Service
	IStudentService studentService;
	ITeacherService teacherService;
	IAdminService adminService;
	
	//out
	String result;
	
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		if(!session.containsKey("userID")){
			result = "UNLOGIN";
		}
		else{
			Integer userID = (Integer)session.get("userID");
			Integer userType = (Integer)session.get("userType");
			switch(userType){
			case 1:
				Student student = studentService.selectStudent(userID);
				result = student.getStudentName();
				break;
			case 2:
				Teacher teacher = teacherService.selectTeacher(userID);
				result = teacher.getTeacherName();
				break;
			case 3:
				Admin admin = adminService.seleteAdmin(userID);
				result = admin.getAdminName();
				break;
			}
		}
		return "success";
	}

	public IStudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
	}

	public ITeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(ITeacherService teacherService) {
		this.teacherService = teacherService;
	}

	public IAdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
