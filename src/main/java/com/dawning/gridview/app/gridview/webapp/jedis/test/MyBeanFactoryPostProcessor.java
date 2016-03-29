package com.dawning.gridview.app.gridview.webapp.jedis.test;

import org.springframework.beans.BeansException;
import org.springframework.beans.MutablePropertyValues;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;

public class MyBeanFactoryPostProcessor implements BeanFactoryPostProcessor {

	public MyBeanFactoryPostProcessor()
	{
		System.out.println("MyBeanFactoryPostProcessor构造器");
	}
	public void postProcessBeanFactory(
			ConfigurableListableBeanFactory beanFactory) throws BeansException {
		// TODO Auto-generated method stub
		System.out.println("调用MyBeanFactoryPostProcessor.postProcessBeanFactory方法");
		BeanDefinition beanDefinition=beanFactory.getBeanDefinition("myJavaBean");
		MutablePropertyValues values=beanDefinition.getPropertyValues();
		if(values.contains("remark")){
			values.addPropertyValue("remark","在BeanFactoryPostProcessor中修改之后的备忘信息");
		}
		
	}

}
