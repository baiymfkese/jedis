package com.dawning.gridview.app.gridview.webapp.jedis.listener;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.PropertyConfigurator;

import com.dawning.gridview.app.gridview.webapp.jedis.util.PropertiesTool;

/**
 * 在web项目启动时，加载log4j配置文件监听器
 * @author guoming
 *
 */
public class Log4jInitListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		String path="/properties/log4j.properties";
		InputStream in=null;
		in=PropertiesTool.getSpecifiedInputStreamOfWEBINF(path);
		Properties pro= new Properties();
		try {
			pro.load(in);
			PropertyConfigurator.configure(pro);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			if(null !=in){
				
				try {
					in.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}

	public void contextDestroyed(ServletContextEvent sce) {
		
	}

	
	
}
