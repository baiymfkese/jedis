package com.dawning.gridview.app.gridview.webapp.jedis.hessian;

import org.springframework.aop.scope.ScopedProxyUtils;
import org.springframework.beans.factory.config.BeanDefinitionHolder;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanNameGenerator;
import org.springframework.context.annotation.AnnotationScopeMetadataResolver;
import org.springframework.context.annotation.ClassPathBeanDefinitionScanner;
import org.springframework.context.annotation.ScopeMetadata;
import org.springframework.context.annotation.ScopeMetadataResolver;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.core.type.filter.AnnotationTypeFilter;
import org.springframework.stereotype.Service;

public abstract class BaseScanner extends ClassPathBeanDefinitionScanner {

	public BeanNameGenerator beanNameGenerator;
	public ScopeMetadataResolver scopeMetadataResolver=new AnnotationScopeMetadataResolver();
	public BeanDefinitionRegistry registry;
	public final static String HTTPINVOKER="0";
	public final static String HESSIAN="1";
	
	public BaseScanner(BeanDefinitionRegistry registry,String rpcBeanNameAnnotation) {
		super(registry);
		this.registry=registry;
		this.beanNameGenerator=new RpcBeanNameGenerator(rpcBeanNameAnnotation);
	}
	@Override
	protected void registerDefaultFilters() {
		this.addIncludeFilter(new AnnotationTypeFilter(Service.class));
	} 
	protected BeanDefinitionHolder applyScopedProxyMode(ScopeMetadata metadata,BeanDefinitionHolder holder,BeanDefinitionRegistry registry){
		
		ScopedProxyMode scopedProxyMode=metadata.getScopedProxyMode();
		if(scopedProxyMode.equals(ScopedProxyMode.NO)){
			return holder;
		}
		boolean proxyTargetClass=scopedProxyMode.equals(ScopedProxyMode.TARGET_CLASS);
		return ScopedProxyUtils.createScopedProxy(holder, registry, proxyTargetClass);
	}

	
}
