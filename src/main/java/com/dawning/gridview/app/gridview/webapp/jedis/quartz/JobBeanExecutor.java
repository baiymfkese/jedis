package com.dawning.gridview.app.gridview.webapp.jedis.quartz;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.apache.log4j.Logger;
import org.quartz.JobDataMap;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

/**
 * job
 * @author ming
 *
 */
public class JobBeanExecutor extends QuartzJobBean {

	private static final Logger LOGGER=Logger.getLogger(JobBeanExecutor.class);
	private ApplicationContext applicationContext=null;
	private String targetObject=null;
	private String targetMethod=null;
	public JobBeanExecutor(){
		
		LOGGER.info("构造器...........");
	}
	public void setApplicationContext(ApplicationContext context) {
		this.applicationContext = context;
	}

	public void setTargetObject(String targetObject) {
		this.targetObject = targetObject;
	}
	
	public void setTargetMethod(String targetMethod) {
		this.targetMethod = targetMethod;
	}

	@Override
	protected void executeInternal(JobExecutionContext context)
			throws JobExecutionException {
		// TODO Auto-generated method stub
		
		Object target=this.applicationContext.getBean(targetObject);
		Method method=null;
		if(null !=target){
			try {
				method=target.getClass().getMethod(targetMethod, null);
			} catch (Exception e) {
				LOGGER.error(e);
			}
		}
		if(null != method){
			
			try {
				
				LOGGER.info("start schedule job["+target.getClass().getName()+
						"."+targetMethod+"]");
				method.invoke(target, null);
				
			} catch (Exception e) {
				LOGGER.error("schedule job["+target.getClass().getName()+"."+
			    targetMethod+"] failed, cause:"+e);
			}
		}
		
	}

}
