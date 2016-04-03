package com.dawning.gridview.app.gridview.webapp.jedis.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import org.springframework.util.Assert;


public class PropertiesTool {
    
public static InputStream getSpecifiedInputStreamOfWEBINF(String path){
		
		Assert.hasLength(path,"path can't be empty!!");
		//D:\workspace_karaf\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\tradiweb\WEB-INF 物理路径
		String prefixPath=PropertiesTool.class.getResource("/").getPath().replace("classes/","");
	    String resultPath="";
		if(path.startsWith("/")){
	    	
	    	resultPath=prefixPath+path;
	    }else{
	    	
	    	resultPath=prefixPath+File.separator+path;
	    }
		try {
			return new FileInputStream(new File(resultPath));
		} catch (FileNotFoundException e) {
			System.out.println("can't find path["+resultPath+"]");
		}
		return null;
		
	}
}
