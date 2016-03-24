package com.dawning.gridview.app.gridview.webapp.jedis.config;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Config {

	@Value("#{settings['quartz.name']}")
	private String name;
	
	@Value("#{settings['quartz.age']}")
	private int age;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	@PostConstruct
	public void print(){
		
		System.out.println("----------------------******-------------");
		System.out.println("name="+name+",age="+age);
		System.out.println("----------------------******-------------");
	}
	
}
