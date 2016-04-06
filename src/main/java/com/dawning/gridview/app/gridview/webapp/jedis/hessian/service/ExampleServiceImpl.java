package com.dawning.gridview.app.gridview.webapp.jedis.hessian.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dawning.gridview.app.gridview.webapp.jedis.mapper.StudentDaoIMapper;


@Service
public class ExampleServiceImpl implements ExampleService {

	@Autowired
	private StudentDaoIMapper studentMapper;
	
	public String greeting() {
		// TODO Auto-generated method stub
		return "nice to meet you----->"+studentMapper;
	}

}
