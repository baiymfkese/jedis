package com.dawning.gridview.app.gridview.webapp.jedis.util;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;
import net.sf.json.util.CycleDetectionStrategy;

import org.springframework.util.Assert;

/**
 * json tool
 * @author guoming
 *
 */
public class JsonTool {

	/**
	 * 日期处理类
	 * @author Admin
	 *
	 */
	private static class DateJsonValueProcessor implements JsonValueProcessor{

		private String dateFormat = "yyyy-MM-dd HH:mm:ss";
		
		public DateJsonValueProcessor(String dateFormat){

			if(dateFormat != null && !"".equals(dateFormat)){

				this.dateFormat=dateFormat;
			}
	    }
		
		public DateJsonValueProcessor(){}

		
		public Object processArrayValue(Object value, JsonConfig jsonConfig) {

			String[] obj={};
			if(value instanceof Date[]){

				Date[] dates=(Date[])value;
				obj=new String[dates.length];
				String str="";
				for(int i=0;i<dates.length;i++){
					str=new SimpleDateFormat(dateFormat).format(dates[i]);
					obj[i]=str;
				}
			} else if (value instanceof Timestamp[]) {
				
				Timestamp[] times = (Timestamp[])value;
				obj=new String[times.length];
				String str="";
				for(int i=0;i<times.length;i++){
					str=new SimpleDateFormat(dateFormat).format(times[i]);
					obj[i]=str;
				}
			}
			return obj;
		}

		
		public Object processObjectValue(String key, Object value, JsonConfig jsonConfig) {

			if(value instanceof Date){

				return new SimpleDateFormat(dateFormat).format((Date)value);
				
			} else if (value instanceof Timestamp) {
			
				return new SimpleDateFormat(dateFormat).format((Timestamp)value);
			}
			return "";
		}

	}
	/**
	 * 将一个对象转换为json字符串
	 * @param obj support type:map,pojo
	 * @param datePattern 日期模式
	 * @param excludes 生成json序列时不包含的对象属性
	 * @return
	 */
	public static String getJsonString4JavaPOJO(Object obj,String datePattern,String[] excludes){

		JsonConfig jc=getJSONConfig(datePattern,excludes);
		JSONObject jo=JSONObject.fromObject(obj,jc);
		return jo.toString();
	}

	/**
	 * 将java对象数组转换成json字符串,并设定日期格式和不包含哪些属性
	 * @param javaObjs
	 * @param datePattern
	 * @param excludes
	 * @return
	 */
	public static String getJsonString4JavaArray(Object[] javaObjs,String datePattern,String[] excludes) {
		
		JSONArray json;
		
		JsonConfig jc=getJSONConfig(datePattern,excludes);
		
		json = JSONArray.fromObject(javaObjs, jc);
		
		return json.toString();
	}
	/**
	 * 将一个list集合对象转换为json字符串
	 * @param list
	 * @param datePattern
	 * @param excludes
	 * @return
	 */
	public static String getJsonString4List(List<?> list,String datePattern,String[] excludes){
		if(list!=null && list.size()>0){

			JsonConfig jc=getJSONConfig(datePattern,excludes);
			JSONArray ja=JSONArray.fromObject(list,jc);
			return ja.toString();
		}
		return "";
	}
	/**
	 * 将一个json字符串转换为pojo
	 * @param jsonString
	 * @param classType
	 * @return
	 */
	public static <T> T getObject4JsonString(String jsonString,Class<T> classType)throws Exception{

		Assert.hasText(jsonString, "json字符串不能为空");
		
		Object obj;
		JSONObject jo=JSONObject.fromObject(jsonString);
		
		obj=JSONObject.toBean(jo, classType);
		
		return classType.cast(obj);
	}

	/**
	 * 将json字符串转换为Map
	 * @param jsonString
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,Object> getMap4JsonString(String jsonString){

		Assert.hasText(jsonString, "json字符串不能为空");
		
		Map<String,Object> result=new HashMap<String,Object>();
		
		JSONObject jsonObject=JSONObject.fromObject(jsonString);
		
		Iterator<String> keyIter = jsonObject.keys();
		
		String key;
		Object value;
		while(keyIter.hasNext()) {
			
			key = keyIter.next();
			value = jsonObject.get(key);
			result.put(key,value);
			
		}
		return result;
	}
	/**
	 * 从json数组中转换为java数组
	 * @param jsonString
	 * @return
	 * @throws Exception
	 */
	public static Object[] getObjectArray4JsonString(String jsonString)throws Exception{

		Assert.hasText(jsonString, "json字符串不能为空");
		
		JSONArray array=JSONArray.fromObject(jsonString);
		
		return array.toArray();
	}
	/**
	 * 将json字符串转换为某个po的集合对象
	 * @param jsonString
	 * @param classType
	 * @return
	 * @throws Exception
	 */
	public static <T> List<T> getList4JsonString(String jsonString,Class<T> classType)throws Exception{

		Assert.hasText(jsonString, "json字符串不能为空");
		
		JSONArray arrays=JSONArray.fromObject(jsonString);
		
		JSONObject jsonObject=null;
		
		Object result=null;
		
		List<T> list=new ArrayList<T>();
		
		for(int i=0;i<arrays.size();i++){
			
			jsonObject=arrays.getJSONObject(i);
			
			result=JSONObject.toBean(jsonObject, classType);
			
			list.add(classType.cast(result));
			
		}
		return list;
	}
	
	private static JsonConfig getJSONConfig(String datePattern,String[] excludes){

		
		DateJsonValueProcessor djvp=("".equals(datePattern) || null == datePattern)?new DateJsonValueProcessor():new DateJsonValueProcessor(datePattern);
		String[] exclu=(null == excludes || excludes.length <= 0) ? new String[]{""}:excludes;
		JsonConfig jsonConfig=new JsonConfig();
		jsonConfig.setExcludes(exclu);
		jsonConfig.setIgnoreDefaultExcludes(false);
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		jsonConfig.registerJsonValueProcessor(Date.class,djvp);
		jsonConfig.registerJsonValueProcessor(Timestamp.class,djvp);		
		return jsonConfig;
	}
	public static void main(String[] args) {
		
		Map<String,Map<String,Object>> map = new HashMap<String,Map<String,Object>>();
		Map<String,Object> innerMap=new HashMap<String,Object>();
		innerMap.put("sdfdf2322w","java");
		map.put("ja",innerMap);
		System.out.println(JsonTool.getJsonString4JavaPOJO(map,null,null));
	}
}
