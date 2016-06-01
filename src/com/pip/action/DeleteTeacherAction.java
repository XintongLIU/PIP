package com.pip.action;

import com.pip.domain.Teacher;
import com.pip.service.impl.TeacherServiceImpl;

public class DeleteTeacherAction {
	
	TeacherServiceImpl teacherService;
	Teacher teacher;
	
	public String execute(){
		teacherService.deleteTeacher(teacher.getTeacherID());
		return "success";
	}

	public TeacherServiceImpl getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherServiceImpl teacherService) {
		this.teacherService = teacherService;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	

}
