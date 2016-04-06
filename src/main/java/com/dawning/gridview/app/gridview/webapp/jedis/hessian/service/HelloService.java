package com.dawning.gridview.app.gridview.webapp.jedis.hessian.service;

import java.util.List;
import java.util.Map;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;

public interface HelloService {

	public String helloWorld(String message);
	
	public Student getStudentByStudent(Student student);
	
	public  List<Student> getAll();
	
	public Map<String,Object> getMap();
	
}
