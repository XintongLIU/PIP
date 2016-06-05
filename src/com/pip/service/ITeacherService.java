package com.pip.service;

import com.pip.domain.Teacher;
import java.util.List;

public interface ITeacherService {
	int insertTeacher(Teacher teacher);
	void deleteTeacher(int id);
	void updateTeacher(Teacher teacher);
	Teacher selectTeacher(int id);
	List<Teacher> showTeacherList();

}
