package com.dawning.gridview.app.gridview.webapp.jedis.service;

import java.io.Serializable;
import java.util.List;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;

/**
 * 学生服务
 * @author ming
 *
 */
public interface StudentServiceI {

	public List<Student> getStudentList();
	
	public Student  getStudentById(Serializable id);
	
	public void addStudent(Student student);
	
	public void deleteStudent(Serializable id);
	
	public void init();
}
