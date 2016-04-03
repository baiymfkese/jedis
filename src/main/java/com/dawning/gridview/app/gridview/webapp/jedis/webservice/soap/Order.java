package com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 订单对象
 * @author ming
 *
 */
public class Order implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	
	private Integer orderNum;
	
	private String name;
	
	private Date orderDate;

	public Order(){};
	
	public Order(String id,Integer orderNum,String name,Date orderDate){
		this.id=id;
		this.orderNum=orderNum;
		this.name=name;
		this.orderDate=orderDate;
	}
	public Order(String id,Integer orderNum,String name){
		this(id,orderNum,name,null);
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
