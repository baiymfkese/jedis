package com.dawning.gridview.app.gridview.webapp.jedis.ds;

/**
 * 数据源切换
 * @author ming
 *
 */
public class DataSourceContextHolder {

	private static final ThreadLocal<String> contextHolder=new ThreadLocal<String>();
	public static final String MASTER="master";
	public static final String SLAVE="slave";
	public static void setCustomerType(String customerType){
		contextHolder.set(customerType);
	}
	public static String getCustomerType(){
		return contextHolder.get();
	}
	public static void clearCustomerType(){
		contextHolder.remove();
	}
}
