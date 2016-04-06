package com.dawning.gridview.app.gridview.webapp.jedis.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dawning.gridview.app.gridview.webapp.jedis.mapper.StudentDaoIMapper;
import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;
import com.dawning.gridview.app.gridview.webapp.jedis.service.StudentServiceI;

@Service("studentService")
public class StudentServiceImpl implements StudentServiceI {
	
	@Autowired
	private StudentDaoIMapper studentMapper;
	
	public void init(){
		System.out.println("**************************"+studentMapper);
	}
	public List<Student> getStudentList() {
		// TODO Auto-generated method stub
		System.out.println("studentMapper="+studentMapper);
		return studentMapper.getStudentList();
	}

	public Student getStudentById(Serializable id) {
		System.out.println("studentMapper="+studentMapper);
		// TODO Auto-generated method stub
		return studentMapper.getStudentById(id);
	}

	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		studentMapper.addStudent(student);
	}

	public void deleteStudent(Serializable id) {
		// TODO Auto-generated method stub
		studentMapper.deleteStudent(id);
	}

}
