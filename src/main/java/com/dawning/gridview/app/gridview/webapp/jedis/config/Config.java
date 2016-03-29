package com.dawning.gridview.app.gridview.webapp.jedis.config;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Config {

	@Value("${dhcp.username}")
	private String name;
	
	@Value("${dhcp.password}")
	private String pwd;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@PostConstruct
	public void print(){
		
		System.out.println("----------------------******-------------");
		System.out.println("name="+name+",pwd="+pwd);
		System.out.println("----------------------******-------------");
	}
	
}
