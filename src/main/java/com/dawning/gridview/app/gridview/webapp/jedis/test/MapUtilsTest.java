package com.dawning.gridview.app.gridview.webapp.jedis.test;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.MapUtils;

public class MapUtilsTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("age",21);
		map.put("name","lisi");
		System.out.println(MapUtils.getInteger(map,"age"));
		System.out.println(MapUtils.getString(map,"name"));
	}

}
