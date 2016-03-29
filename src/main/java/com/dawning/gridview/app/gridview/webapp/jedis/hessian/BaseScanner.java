package com.dawning.gridview.app.gridview.webapp.jedis.hessian;

import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanNameGenerator;
import org.springframework.context.annotation.AnnotationScopeMetadataResolver;
import org.springframework.context.annotation.ClassPathBeanDefinitionScanner;
import org.springframework.context.annotation.ScopeMetadataResolver;
import org.springframework.core.type.filter.AnnotationTypeFilter;
import org.springframework.stereotype.Service;

public abstract class BaseScanner extends ClassPathBeanDefinitionScanner {

	public BeanNameGenerator beanNameGenerator;
	public ScopeMetadataResolver scopeMetadataResolver=new AnnotationScopeMetadataResolver();
	public BeanDefinitionRegistry registry;
	public final static String HTTPINVOKER="0";
	public final static String HESSIAN="1";
	public BaseScanner(BeanDefinitionRegistry registry) {
		super(registry);
		// TODO Auto-generated constructor stub
	}
	public BaseScanner(BeanDefinitionRegistry registry,String rpcBeanNameAnnotation) {
		super(registry);
		this.beanNameGenerator=new RpcBeanNameGenerator(rpcBeanNameAnnotation);
	}
	@Override
	protected void registerDefaultFilters() {
		this.addIncludeFilter(new AnnotationTypeFilter(Service.class));
	} 
	

	
}
