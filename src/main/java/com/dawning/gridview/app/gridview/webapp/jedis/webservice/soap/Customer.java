package com.dawning.gridview.app.gridview.webapp.jedis.webservice.soap;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class Customer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String,Object> result=new HashMap<String,Object>();
	public Map<String, Object> getResult() {
		return result;
	}
	public void setResult(Map<String, Object> result) {
		this.result = result;
	}
	

}
