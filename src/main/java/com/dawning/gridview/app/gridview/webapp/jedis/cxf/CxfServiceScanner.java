package com.dawning.gridview.app.gridview.webapp.jedis.cxf;

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
import org.springframework.stereotype.Service;

import com.dawning.gridview.app.gridview.webapp.jedis.hessian.BaseScanner;
import com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap.OrderManagerServiceI;

/**
 * 
 * @author ming
 *
 */
public class CxfServiceScanner implements BeanFactoryPostProcessor,
		ApplicationContextAware, InitializingBean {

	private ApplicationContext context=null;
	private String rpcBeanNameAnnotation=Service.class.getName();
	// 需要扫描的package,多个包以","分隔
	private String basePackage;
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub

	}

	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		
		this.context=applicationContext;
	}

	public void postProcessBeanFactory(
			ConfigurableListableBeanFactory beanFactory) throws BeansException {
		// TODO Auto-generated method stub
		BeanDefinitionRegistry registry=(BeanDefinitionRegistry)beanFactory;
		Scanner scanner=new Scanner(registry,this.rpcBeanNameAnnotation);
		scanner.setResourceLoader(this.context);
		scanner.scan(basePackage);
	}
	private class Scanner extends BaseScanner{

		public Scanner(BeanDefinitionRegistry registry,
				String rpcBeanNameAnnotation) {
			super(registry, rpcBeanNameAnnotation);
		}

		@Override
		protected Set<BeanDefinitionHolder> doScan(String... basePackages) {
			
			Set<BeanDefinitionHolder> beanDefinitions=new LinkedHashSet<BeanDefinitionHolder>();
			for(String basePackage:basePackages){
				Set<BeanDefinition> candidates=findCandidateComponents(basePackage);
				for(BeanDefinition candidate:candidates){
					
					ScopeMetadata scopeMetadata=this.scopeMetadataResolver.resolveScopeMetadata(candidate);
					candidate.setScope(scopeMetadata.getScopeName());
					String originalBeanName=this.beanNameGenerator.generateBeanName(candidate, registry);
					ScannedGenericBeanDefinition bd=(ScannedGenericBeanDefinition)candidate;
					bd.setBeanClassName(PublishCxfService.class.getName());
					bd.setBeanClass(PublishCxfService.class);
				//	bd.getPropertyValues().add("serviceObj",context.getBean(originalBeanName));
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
					bd.getPropertyValues().add("simpleBeanName",originalBeanName);
					BeanDefinitionHolder definitionHolder=new BeanDefinitionHolder(candidate,"_"+originalBeanName);
					definitionHolder=this.applyScopedProxyMode(scopeMetadata, definitionHolder, registry);
					beanDefinitions.add(definitionHolder);
					registerBeanDefinition(definitionHolder, registry);
				}
			}
			return beanDefinitions;
		}
	}
	public String getBasePackage() {
		return basePackage;
	}

	public void setBasePackage(String basePackage) {
		this.basePackage = basePackage;
	}
	
}
