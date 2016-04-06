package com.dawning.gridview.app.gridview.webapp.jedis.cxf.client;

import java.util.List;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;
import com.dawning.gridview.app.gridview.webapp.jedis.service.StudentServiceI;

public class TestWebService {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String webServiceurl="http://localhost:9091/studentService";
		/*ClientProxyFactoryBean proxyFactory=new ClientProxyFactoryBean(); 
	    proxyFactory.setServiceClass(OrderManagerServiceI.class); 
	    proxyFactory.setAddress(webServiceurl); */
		StudentServiceI orderService=WebServiceClient.getWebService(webServiceurl, StudentServiceI.class);
	   // OrderManagerServiceI orderService=(OrderManagerServiceI)proxyFactory.create(); 
		List<Student> list=orderService.getStudentList();
		for(Student stu:list){
			System.out.println(stu);
		}
	}

}
