package com.dawning.gridview.app.gridview.webapp.jedis.shiro;

import javax.annotation.PostConstruct;

import net.java.truelicense.core.LicenseConsumerManager;

import org.springframework.beans.factory.annotation.Autowired;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;

public class ShiroTest {

	@Autowired
	private Student test;
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("1111111");
		LicenseConsumerManager lcm=null;
		lcm.context();
	}
	@PostConstruct
	public void init(){
		
		System.out.println("11111初始化-------------"+test);
	}
	
}
