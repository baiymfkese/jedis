package com.dawning.gridview.app.gridview.webapp.jedis.cxf;

import org.apache.cxf.frontend.ServerFactoryBean;
import org.apache.log4j.Logger;

import com.dawning.gridview.app.gridview.webapp.jedis.config.WebServiceConfig;
import com.dawning.gridview.app.gridview.webapp.jedis.util.ApplicationContextHelp;

/**
 * 发布cxf服务
 * @author ming
 *
 */
public class CxfServer {

	private static final Logger LOGGER=Logger.getLogger(CxfServer.class);

	public static void publishWebService(Object obj,Class<?> clazz,String beanName){
		
		WebServiceConfig config=ApplicationContextHelp.getInstance().getBean("webServiceConfig");
		System.out.println("config="+config);
		LOGGER.info("开始发布webservice.......");
		ServerFactoryBean serverFactoryBean=new ServerFactoryBean();
		serverFactoryBean.setAddress("http://0.0.0.0:9999/"+beanName);
		serverFactoryBean.setServiceClass(clazz);
		serverFactoryBean.setServiceBean(obj);
		serverFactoryBean.create();
		LOGGER.info("发布webservice成功.......");
		
	}
}
