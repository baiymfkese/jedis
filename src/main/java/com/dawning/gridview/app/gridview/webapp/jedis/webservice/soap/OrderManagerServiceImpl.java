package com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dawning.gridview.app.gridview.webapp.jedis.mapper.StudentDaoIMapper;
import com.dawning.gridview.app.gridview.webapp.jedis.service.MyService;

/**
 * 订单管理服务实现类
 * @author ming
 *
 */
@Service
public class OrderManagerServiceImpl implements OrderManagerServiceI {

	@Autowired
	private StudentDaoIMapper studentMapper;
	@Autowired
	private MyService myservice=null;
	private static  List<Order> originalList=new ArrayList<Order>();
	static{
		Order order = new Order("1",1,"张三");
		originalList.add(order);
		order = new Order("3",3,"陈强");
		originalList.add(order);
		order = new Order("8",8,"赵恒");
		originalList.add(order);
		order = new Order("2",2,"刘欢");
		originalList.add(order);
	}
	public Order getOrder() {
		// TODO Auto-generated method stub
		System.out.println("originalList'size="+originalList.size());
		Order order=originalList.get(0);
		System.out.println("服务端order="+order+",myservice="+myservice);
		return order;
	}

	public List<Order> getOrderList() {
		// TODO Auto-generated method stub
		return originalList;
	}

	public Customer getOrderInfo() {
		// TODO Auto-generated method stub
		Map<String,Object> result=new HashMap<String,Object>();
		result.put("count",4);
		result.put("data", originalList);
		Customer customer=new Customer();
		customer.setResult(result);
		return customer;
	}

	public Order[] getOrders() {
		// TODO Auto-generated method stub
		return originalList.toArray(new Order[0]);
	}

	public StudentDaoIMapper getStudentMapper() {
		return studentMapper;
	}
}
