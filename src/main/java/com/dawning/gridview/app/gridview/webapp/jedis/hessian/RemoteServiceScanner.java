package com.dawning.gridview.app.gridview.webapp.jedis.hessian;

import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.BeanDefinitionHolder;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.ScannedGenericBeanDefinition;
import org.springframework.context.annotation.ScopeMetadata;
import org.springframework.remoting.caucho.HessianServiceExporter;
import org.springframework.remoting.httpinvoker.HttpInvokerServiceExporter;

/**
 * scanner自动扫描指定包下的@service注解的类，注册为远程服务，以beanName作为远程服务名
 * @author ming
 *
 */
public class RemoteServiceScanner implements BeanFactoryPostProcessor,
		InitializingBean, ApplicationContextAware {

	private ApplicationContext applicationContext=null;
	// 需要扫描的package,多个包以","分隔
	private String basePackage;
	// 定义remote service的bean name的注解名
	private String rpcBeanNameAnnotation;
	// 远程服务代理类型，0:httpInvoker,1:hessian
	private String proxyType;
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		// TODO Auto-generated method stub
		this.applicationContext=applicationContext;
	}

	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub

	}

	public void postProcessBeanFactory(
			ConfigurableListableBeanFactory beanFactory) throws BeansException {
		// TODO Auto-generated method stub
		BeanDefinitionRegistry tempRegistry=(BeanDefinitionRegistry)beanFactory;
		
	}
	private final class Scanner extends BaseScanner{

		public Scanner(BeanDefinitionRegistry registry,
				String rpcBeanNameAnnotation) {
			super(registry, rpcBeanNameAnnotation);
			// TODO Auto-generated constructor stub
		}

		@Override
		protected Set<BeanDefinitionHolder> doScan(String... basePackages) {
			// TODO Auto-generated method stub
			Set<BeanDefinitionHolder> beanDefinitions=new LinkedHashSet<BeanDefinitionHolder>();
			for(String basePackage:basePackages){
				Set<BeanDefinition> candidates=findCandidateComponents(basePackage);
				for(BeanDefinition candidate:candidates){
					
					ScopeMetadata scopeMetadata=this.scopeMetadataResolver.resolveScopeMetadata(candidate);
					candidate.setScope(scopeMetadata.getScopeName());
					String originalBeanName=this.beanNameGenerator.generateBeanName(candidate, registry);
					ScannedGenericBeanDefinition bd=(ScannedGenericBeanDefinition)candidate;
					String beanClassName=bd.getBeanClassName();
					if(proxyType.equals(HTTPINVOKER)){
						bd.setBeanClassName(HttpInvokerServiceExporter.class.getName());
						bd.setBeanClass(HttpInvokerServiceExporter.class);
					}
					if(proxyType.equals(HESSIAN)){
						bd.setBeanClassName(HessianServiceExporter.class.getName());
						bd.setBeanClass(HessianServiceExporter.class);
					}
					bd.getPropertyValues().add("service",applicationContext.getBean(originalBeanName));
					String[] interfaces=bd.getMetadata().getInterfaceNames();
					if(null != interfaces && interfaces.length>0){
						Class<?> inter=null;
						try {
							inter=Class.forName(interfaces[0]);
						} catch (ClassNotFoundException e) {
							continue;
						}
						bd.getPropertyValues().add("serviceInterface",inter);
					}
				}
			}
			return super.doScan(basePackages);
		}
		
	}
	public String getBasePackage() {
		return basePackage;
	}

	public void setBasePackage(String basePackage) {
		this.basePackage = basePackage;
	}

	public String getRpcBeanNameAnnotation() {
		return rpcBeanNameAnnotation;
	}

	public void setRpcBeanNameAnnotation(String rpcBeanNameAnnotation) {
		this.rpcBeanNameAnnotation = rpcBeanNameAnnotation;
	}

	public String getProxyType() {
		return proxyType;
	}

	public void setProxyType(String proxyType) {
		this.proxyType = proxyType;
	}
	
}
