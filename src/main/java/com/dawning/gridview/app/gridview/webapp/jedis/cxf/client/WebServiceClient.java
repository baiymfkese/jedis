package com.dawning.gridview.app.gridview.webapp.jedis.cxf.client;

import org.apache.cxf.endpoint.Client;
import org.apache.cxf.frontend.ClientProxy;
import org.apache.cxf.frontend.ClientProxyFactoryBean;
import org.apache.cxf.transport.http.HTTPConduit;
import org.apache.cxf.transports.http.configuration.HTTPClientPolicy;

/**
 * web service客户端
 * @author ming
 *
 */
public class WebServiceClient {

	/**
	 * 
	 * @param webServiceurl "http://10.0.31.78:9091/teacherManage"
	 * @param clazz
	 * @return
	 */
	public static <T> T getWebService(String webServiceurl,Class<T> clazz){
	
		 T t=null;
		 try {
			 ClientProxyFactoryBean proxyFactory=new ClientProxyFactoryBean();
			 proxyFactory.setServiceClass(clazz);
			 proxyFactory.setAddress(webServiceurl);
			// proxyFactory.getServiceFactory().setDataBinding(new AegisDatabinding());// 对数据进行绑定
			 Object service=proxyFactory.create();
			
			 Client client=ClientProxy.getClient(service);
			 HTTPConduit conduit=(HTTPConduit)client.getConduit();
			 HTTPClientPolicy httpClientPolicy = new HTTPClientPolicy();
			 long strReceiveTimeout = 40*60*1000;
			 long strConnTimeout = 20*60*1000;

			 httpClientPolicy.setReceiveTimeout(strReceiveTimeout);// 等待服务器响应时间40分钟
			 httpClientPolicy.setAllowChunking(false);

			 httpClientPolicy.setConnectionTimeout(strConnTimeout);// 连接服务器超时时间20分钟

			 conduit.setClient(httpClientPolicy);
			 if(null != service){
				 
				t=clazz.cast(service);
			 }
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	     return t;
	}
}
