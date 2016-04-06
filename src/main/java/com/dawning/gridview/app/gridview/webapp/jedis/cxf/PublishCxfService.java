package com.dawning.gridview.app.gridview.webapp.jedis.cxf;

import javax.annotation.PostConstruct;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;


public class PublishCxfService implements ApplicationContextAware{

	private Object serviceObj;
	private Class<?> serviceInterface;
	private String simpleBeanName;
	private ApplicationContext context=null;
	@PostConstruct
	public void publish() throws Exception {
		// TODO Auto-generated method stub
		serviceObj=this.context.getBean(simpleBeanName);
		System.out.println(serviceObj+"---------开始发布webservice["+serviceInterface.getName()+"]");
		CxfServer.publishWebService(serviceObj,serviceInterface, simpleBeanName);
		System.out.println("发布webservice["+serviceInterface.getName()+"]完成");
	}
	public Object getServiceObj() {
		return serviceObj;
	}
	public void setServiceObj(Object serviceObj) {
		this.serviceObj = serviceObj;
	}
	public Class<?> getServiceInterface() {
		return serviceInterface;
	}
	public void setServiceInterface(Class<?> serviceInterface) {
		this.serviceInterface = serviceInterface;
	}
	public String getSimpleBeanName() {
		return simpleBeanName;
	}
	public void setSimpleBeanName(String simpleBeanName) {
		this.simpleBeanName = simpleBeanName;
	}
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		// TODO Auto-generated method stub
		this.context=applicationContext;
		System.out.println("context---------------------"+applicationContext);
	}
	
}
