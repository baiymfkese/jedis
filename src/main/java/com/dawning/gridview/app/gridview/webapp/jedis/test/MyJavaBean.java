package com.dawning.gridview.app.gridview.webapp.jedis.test;

import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.InitializingBean;

public class MyJavaBean implements BeanNameAware,InitializingBean {

	private String desc;
	private String remark;
	public MyJavaBean(){
		System.out.println("myjavabean的构造函数被执行了.......");
	}
	
	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		System.out.println("调用setDesc方法");
		this.desc = desc;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		System.out.println("调用setRemark方法");
		this.remark = remark;
	}

	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("调用afterPropertiesSet方法");
		this.desc="在初始化方法中修改之后的描述信息";
	}
	public void initMethod(){
		System.out.println("调用initMethod方法");
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		StringBuilder sb=new StringBuilder();
		sb.append("描述:").append(this.desc);
		sb.append(",备注:").append(this.remark);
		return sb.toString();
	}

	public void setBeanName(String name) {
		// TODO Auto-generated method stub
		System.out.println("执行setBeanName方法......name="+name);
	}
	
}
