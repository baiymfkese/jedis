package com.dawning.gridview.app.gridview.webapp.jedis.mapper;

import java.io.Serializable;
import java.util.List;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;

public interface StudentDaoIMapper {

	public List<Student> getStudentList();
	
	public Student  getStudentById(Serializable id);
	
	public void addStudent(Student student);
	
	public void deleteStudent(Serializable id);
}
