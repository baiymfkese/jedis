package com.dawning.gridview.app.gridview.webapp.jedis.quartz;

import org.apache.log4j.Logger;
import org.quartz.JobDataMap;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.dawning.gridview.app.gridview.webapp.jedis.controller.TestController;

/**
 * job
 * @author ming
 *
 */
public class JobBeanExecutor extends QuartzJobBean {

	private static final Logger LOGGER=Logger.getLogger(JobBeanExecutor.class);
	@Override
	protected void executeInternal(JobExecutionContext context)
			throws JobExecutionException {
		// TODO Auto-generated method stub
		JobDetail jobDetail=context.getJobDetail();
		JobDataMap map=jobDetail.getJobDataMap();
		if(null != map && !map.isEmpty()){
			
			String[] keys=map.getKeys();
			for(String key:keys){
				
				LOGGER.info("key="+key+",value="+map.getString(key));
			}
		}
	}

}
