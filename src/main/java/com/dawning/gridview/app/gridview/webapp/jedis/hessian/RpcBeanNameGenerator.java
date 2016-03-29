package com.dawning.gridview.app.gridview.webapp.jedis.hessian;

import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.AnnotatedBeanDefinition;
import org.springframework.context.annotation.AnnotationBeanNameGenerator;
import org.springframework.core.type.AnnotationMetadata;
import org.springframework.util.StringUtils;

public class RpcBeanNameGenerator extends AnnotationBeanNameGenerator {

	private String rpcBeanNameAnnotation;
	
	public RpcBeanNameGenerator(){}
	
	public RpcBeanNameGenerator(String name){
		
		this.rpcBeanNameAnnotation=name;
	}

	public String getRpcBeanNameAnnotation() {
		return rpcBeanNameAnnotation;
	}

	public void setRpcBeanNameAnnotation(String rpcBeanNameAnnotation) {
		this.rpcBeanNameAnnotation = rpcBeanNameAnnotation;
	}

	@Override
	protected String determineBeanNameFromAnnotation(
			AnnotatedBeanDefinition annotatedDef) {
		// TODO Auto-generated method stub
		AnnotationMetadata amd=annotatedDef.getMetadata();
		Set<String> types=amd.getAnnotationTypes();
		String beanName=null;
		for(String type:types){
			
			if(type.equals(this.rpcBeanNameAnnotation)){
				
				Map<String,Object> attributes=amd.getAnnotationAttributes(type);
				String value=(String)attributes.get("value");
				if(StringUtils.hasLength(value)){
					beanName=value;
					break;
				}
			}
		}
		return beanName;
	}
	
}
