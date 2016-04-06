package com.dawning.gridview.app.gridview.webapp.jedis.config;



import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


public class WebServiceConfig {

	//@Value("${WEBSERVICE_IP}")
	private String ip;
	
	//@Value("${WEBSERVICE_PORT}")
	private String port;

	public String getIp() {
		return ip;
	}


	public String getPort() {
		return port;
	}


	public void setIp(String ip) {
		this.ip = ip;
	}


	public void setPort(String port) {
		this.port = port;
	}

	
	
	
}
