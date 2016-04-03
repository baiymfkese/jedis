package com.dawning.gridview.app.gridview.webapp.jedis.cxf.client;

import org.apache.cxf.frontend.ClientProxyFactoryBean;

import com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap.Order;
import com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap.OrderManagerServiceI;

public class TestWebService {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String webServiceurl="http://localhost:9999/orderManagerServiceImpl";
		/*ClientProxyFactoryBean proxyFactory=new ClientProxyFactoryBean(); 
	    proxyFactory.setServiceClass(OrderManagerServiceI.class); 
	    proxyFactory.setAddress(webServiceurl); */
		OrderManagerServiceI orderService=WebServiceClient.getWebService(webServiceurl, OrderManagerServiceI.class);
	   // OrderManagerServiceI orderService=(OrderManagerServiceI)proxyFactory.create(); 
		System.out.println("orderService="+orderService);
		Order order=orderService.getOrder();
		System.out.println("order="+order);
	}

}
