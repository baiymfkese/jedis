package com.dawning.gridview.app.gridview.webapp.jedis.ds;


import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;


@Component
@Aspect
public class DataSourceAOP {
	
	 private static final Logger LOGGER=Logger.getLogger(DataSourceAOP.class);
	@Before("execution(* com..mapper.*.*(..))")
	public void beforeInvoke(JoinPoint joinPoint){
		
		String beanName=joinPoint.getTarget().getClass().getName();
		String methodName=joinPoint.getSignature().getName();
		if(StringUtils.hasLength(methodName)){
			String name=methodName.toLowerCase();
			if(name.startsWith("insert") || name.startsWith("update") ||
					name.startsWith("delete") || name.startsWith("add")){
				DataSourceContextHolder.setCustomerType(DataSourceContextHolder.MASTER);
			}else{
				DataSourceContextHolder.setCustomerType(DataSourceContextHolder.SLAVE);
			}
		}
		LOGGER.info("datasource aop 拦截,前置通知:class="+beanName+",method="+methodName+",ds="+DataSourceContextHolder.getCustomerType());
	}
}
