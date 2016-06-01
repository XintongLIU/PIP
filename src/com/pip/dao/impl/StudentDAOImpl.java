package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pip.dao.IStudentDAO;
import com.pip.domain.Student;
@Repository
public class StudentDAOImpl extends BaseDAOImpl<Student> implements IStudentDAO{

	@Override
	public List<Student> find(String hql, Student[] param) {
		// TODO Auto-generated method stub
		return super.find("from Student where studentID= :param", param);
	}

	@Override
	public Student get(String hql, Student[] param) {
		// TODO Auto-generated method stub
		return super.get(Student.class, param);
	}

	@Override
	public Long count(String hql, Student[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer executeHql(String hql, Student[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		List<Student> list = new ArrayList<Student>();
		list = super.find("from Student");
		return list;
	}

	@Override
	public Student findStudentById(int studentID) {
		// TODO Auto-generated method stub
		List<Student> list = super.find("from Student where studentID = " + studentID);
		return list.get(0);
	}

	@Override
	public boolean insertStudent(Student student) {
		// TODO Auto-generated method stub
		try{
			super.save(student);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteStudent(Student student) {
		// TODO Auto-generated method stub
		try{
//			super.delete(student);
			super.executeHql("delete from Student where studentID = " + student.getStudentID());
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	

	public List<Student> findStudentByTeamID(Integer teamID){
		List<Student> list = new ArrayList<Student>();
		list = super.find("from Student where teamID = " + teamID);
		return list;
	}
		
	public Student findStudentByName(String studentName){
		List<Student> list = super.find("from Student where studentName = " + studentName);
		return list.get(0);
	}

}
