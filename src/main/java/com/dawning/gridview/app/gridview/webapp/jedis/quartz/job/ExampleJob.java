package com.dawning.gridview.app.gridview.webapp.jedis.quartz.job;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Service;

/**
 * 例子demo job
 * @author ming
 *
 */
@Service
public class ExampleJob {

	public void exectuJob(){
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println("-----------examle job-----start----"+sdf.format(new Date()));
		
	}
}
