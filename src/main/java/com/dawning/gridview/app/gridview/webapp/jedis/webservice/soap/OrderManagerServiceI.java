package com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap;

import java.util.List;

import com.dawning.gridview.app.gridview.webapp.jedis.mapper.StudentDaoIMapper;

/**
 * 订单管理接口
 * @author ming
 *
 */
public interface OrderManagerServiceI {

	public Order getOrder();
	
	public List<Order> getOrderList();
	
	public Customer getOrderInfo();
	
	public Order[] getOrders();
	
	public StudentDaoIMapper getStudentMapper();
	
}
