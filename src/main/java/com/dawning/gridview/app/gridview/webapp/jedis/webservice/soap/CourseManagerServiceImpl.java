package com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap;

import org.springframework.stereotype.Service;

@Service("courseManagerService")
public class CourseManagerServiceImpl implements CourseManagerServiceI {

	public void printCourseName() {
		// TODO Auto-generated method stub
		System.out.println("课程名字-----语文");
	}

}
