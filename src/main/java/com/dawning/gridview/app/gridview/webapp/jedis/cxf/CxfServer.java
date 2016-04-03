package com.dawning.gridview.app.gridview.webapp.jedis.cxf;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.cxf.frontend.ServerFactoryBean;

import com.dawning.gridview.app.gridview.webapp.jedis.util.PropertiesTool;


/**
 * 发布cxf服务
 * @author ming
 *
 */
public class CxfServer {

	private static String ip="0.0.0.0";
	private static String port="9090";
	static{
		Properties pro=null;
		InputStream in=PropertiesTool.getSpecifiedInputStreamOfWEBINF("properties/webservice.properties");
		if(null != in){
			
			pro=new Properties();
			try {
				pro.load(in);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ip=pro.getProperty("WEBSERVICE_IP");
			port=pro.getProperty("WEBSERVICE_PORT");
			
		}
	}
	public static void publishWebService(Object obj,Class<?> clazz,String beanName){
		
		StringBuilder sb=new StringBuilder("http://");
		sb.append(ip).append(":").append(port).append("/");
		sb.append(beanName);
		ServerFactoryBean serverFactoryBean=new ServerFactoryBean();
		serverFactoryBean.setAddress(sb.toString());
		serverFactoryBean.setServiceClass(clazz);
		serverFactoryBean.setServiceBean(obj);
		serverFactoryBean.create();
		
	}
	public static void setIp(String ip) {
		CxfServer.ip = ip;
	}
	public static void setPort(String port) {
		CxfServer.port = port;
	}
	
}
