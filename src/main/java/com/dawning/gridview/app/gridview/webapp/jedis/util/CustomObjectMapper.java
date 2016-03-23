package com.dawning.gridview.app.gridview.webapp.jedis.util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.CustomSerializerFactory;
import org.springframework.util.StringUtils;

/**
 * 解决date类型返回json格式为自定义格式
 * @author guoming
 *
 */
public class CustomObjectMapper extends ObjectMapper {

	private static final String DEFAULT_FORMAT="yyyy-MM-dd HH:mm:ss";
	private String dateFormat="";
	public CustomObjectMapper(){
		
		CustomSerializerFactory factory=new CustomSerializerFactory();
		factory.addGenericMapping(Date.class,new JsonSerializer<Date>() {

			@Override
			public void serialize(Date value, JsonGenerator jsonGenerator,
					SerializerProvider provider) throws IOException,
					JsonProcessingException {
				   SimpleDateFormat sdf=null;
				   if(StringUtils.hasLength(dateFormat)){
					   sdf=new SimpleDateFormat(dateFormat);
				   }else{
					   sdf=new SimpleDateFormat(DEFAULT_FORMAT);
				   }
				   
				   jsonGenerator.writeString(sdf.format(value));
			}
			
		});
		this.setSerializerFactory(factory);
	}
	public void setDateFormat(String dateFormat) {
		this.dateFormat = dateFormat;
	}
	
}
