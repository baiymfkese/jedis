package com.dawning.gridview.app.gridview.webapp.jedis.shiro;

import javax.annotation.PostConstruct;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;

@Service
public class Test3 implements FactoryBean<Student>,InitializingBean, ApplicationContextAware {

	private Student student=null;
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		// TODO Auto-generated method stub
		
		System.out.println("111111setApplicationContext-----"+applicationContext+"------");
	}

	public Student getObject() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("getObject()");
		return student;
	}

	public Class getObjectType() {
		// TODO Auto-generated method stub
		return Student.class;
	}

	public boolean isSingleton() {
		// TODO Auto-generated method stub
		return false;
	}
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("---------afterPropertiesSet-------");
		student=new Student();
		student.setName("guoming");
	}
	@PostConstruct
	public void init(){
		System.out.println("test3333333333初始化----"+student);
	}

}
