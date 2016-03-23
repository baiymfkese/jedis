package com.dawning.gridview.app.gridview.webapp.jedis.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * 获取spring bean工具类
 * @author guoming
 *
 */
public class ApplicationContextHelp implements ApplicationContextAware {

	private static ApplicationContext applicationContext;
	
	private static ApplicationContextHelp help;
	

	public void setApplicationContext(ApplicationContext context)
			throws BeansException {
		
		ApplicationContextHelp.applicationContext = context;
		
	}
	
	private ApplicationContextHelp(){}
	
	public synchronized static ApplicationContextHelp getInstance() {
		
		if (null == help) {
			help = new ApplicationContextHelp();
		}
		return help;
	}
	@SuppressWarnings("unchecked")
	public <T> T getBean(String beanName) {
		return (T)ApplicationContextHelp.applicationContext.getBean(beanName);
	}
}
