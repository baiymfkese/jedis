package com.dawning.gridview.app.gridview.webapp.jedis.hessian.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;

@Service("helloService")
public class HelloServiceImpl implements HelloService {

	public String helloWorld(String message) {
		// TODO Auto-generated method stub
		return "hello,"+message;
	}

	public Student getStudentByStudent(Student student) {
		// TODO Auto-generated method stub
		student.setName("改变了");
		return student;
	}

	public List<Student> getAll() {
		// TODO Auto-generated method stub
		List<Student> list=new ArrayList<Student>();
		Student student=new Student();
		student.setName("chen");
		student.setId(2);
		list.add(student);
		return list;
	}

	public Map<String, Object> getMap() {
		// TODO Auto-generated method stub
		Map<String,Object> map =new HashMap<String,Object>();
		map.put("total",1);
		List<Student> list=new ArrayList<Student>();
		Student student=new Student();
		student.setName("chen");
		student.setId(2);
		list.add(student);
		map.put("list",list);
		return map;
	}

}
