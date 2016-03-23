package com.dawning.gridview.app.gridview.webapp.jedis.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;
import com.google.code.kaptcha.Constants;

@Controller
@RequestMapping("/test")
@SessionAttributes("user")
public class TestController implements ServletContextAware{
	 private static final Logger LOGGER=Logger.getLogger(TestController.class);
	
	 private static final long MAX_UPLOAD_FILE_SIZE=2000000L;

	 private ServletContext servletContext=null;
	 
	 
	@ResponseBody
	@RequestMapping(value="/getData",produces="application/json;charset=utf-8")
	public String getTestData(HttpServletResponse response){
		/*try {
			//response.setContentType("text/html;charset=UTF-8");
			PrintWriter writer=response.getWriter();
			writer.print("{\"msg\":\"我的\"}");
			writer.close();
			LOGGER.info("end-------");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		LOGGER.info("-------getData=");
		return "{\"msg\":\"我的\"}";
	}
	@RequestMapping("/tt")
	public String test1(@ModelAttribute Student stu){
		stu.setBirthDate(new Date());
		stu.setName("guoming");
		LOGGER.info("-------studentsss="+stu);
		return "home";
	}
	/*@RequestMapping("/{name}")
	public String test1(@PathVariable("name")String studentName,@RequestParam(value="name",required=false)String names){
		LOGGER.info("-------studentName="+studentName+",name="+names);
		return "home";
	}*/
	@RequestMapping("/test3")
	public String test3(Student student,String name){
		LOGGER.info("-------student="+student+",name="+name);
		return "ui";
	}
	@RequestMapping("/test4")
	public String test4(){
		return "preview";
	}
	@RequestMapping("/test5")
	@ResponseBody
	public Student test5(String name){
		LOGGER.info("name="+name);
		Student student = new Student("guo");
		return student;
	}
	@RequestMapping("/test6")
	@ResponseBody
	public List<Student> test6(){
		List<Student> studentList=new ArrayList<Student>();
		Student student = new Student("陈");
		studentList.add(student);
		student = new Student("wang");
		student.setBirthDate(new Date());
		studentList.add(student);
		student = new Student("zhao");
		studentList.add(student);
		student = new Student("baiymfkese");
		studentList.add(student);
		return studentList;
	}
	@RequestMapping("/test7")
	@ResponseBody
	public Map<String,Object> test7(){
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("msg","成功");
		map.put("success","true");
		List<Student> studentList=new ArrayList<Student>();
		Student student = new Student("陈");
		studentList.add(student);
		student = new Student("wang");
		student.setBirthDate(new Date());
		studentList.add(student);
		map.put("list",studentList);
		
		return map;
	}
	@RequestMapping("/test8")
	@ResponseBody
	public String test8(){
		LOGGER.info("test8");
		return "{\"success\":true,\"msg\":\"加载成功\"}";
	}
	@RequestMapping("/test9")
	public String test9(ModelMap modelMap){
		
		modelMap.addAttribute("student",new Student("test9"));
		LOGGER.info("modelMap="+modelMap);
		return "home";
	}
	@RequestMapping("/test10")
	public String test10(@ModelAttribute("user")Student student){
		
		student.setName("chen123");
		return "home";
	}
	@RequestMapping("/test11")
	public String test11(@ModelAttribute("user")Student student){
		
		student.setName("cccccccc");
		return "redirect:/test/test12.html";
	}
	@RequestMapping("/test12")
	@ResponseBody
	public Student test12(ModelMap modelMap){
		Student stu=(Student)modelMap.get("user");
		return stu;
	}
	@RequestMapping("/test13")
	public String test13(ModelMap modelMap){
		return "demo1";
	}
	@ModelAttribute("user")
	public Student getStudent(){
		Student stu=new Student();
		stu.setName("chen123");
		stu.setBirthDate(new Date());
		return stu;
	}
	@RequestMapping("/test18")
	public String test18(@ModelAttribute("user")Student student){
		LOGGER.info("-----before1---"+student);
		return "demo1";
	}
	@RequestMapping("/getPieData")
	@ResponseBody
	public Map<String,Object> getPieData(){
		
		System.out.println("getPieData...........");
		Map<String,Object> resultMap=new HashMap<String,Object>();
		List<Map<String,Object>> listMap = new ArrayList<Map<String,Object>>();
		String[] legend={"合格","不合格"};
		int i=35;
		Map<String,Object> local=new HashMap<String,Object>();
		for(String leg:legend){
			local=new HashMap<String,Object>();
			local.put("value",i++);
			local.put("name",leg);
			listMap.add(local);
		}
		resultMap.put("lengend",legend);
		resultMap.put("data",listMap);
		return resultMap;
	}
	public void setServletContext(ServletContext servletContext) {
		
		this.servletContext=servletContext;
	}
	@RequestMapping(value="/test19",method=RequestMethod.POST)
	@ResponseBody
	public String handleUploadFile(String name,@RequestParam("uploadedFile")CommonsMultipartFile[] files,Model model,HttpServletRequest request){
		
		LOGGER.info("files.length="+files.length);
		String fileName="";
		MultipartHttpServletRequest multipartRequest =(MultipartHttpServletRequest)request;
		Enumeration<String> list=(Enumeration<String>)multipartRequest.getParameterNames();
		String paramName="";
		String[] valueArr=null;
		while(list.hasMoreElements()){
			paramName=list.nextElement();
			valueArr=multipartRequest.getParameterValues(paramName);
			LOGGER.info("fieldName------="+paramName+",value="+Arrays.toString(valueArr));
		}
		if(null != files && files.length>0){
			
			for(int i=0;i<files.length;i++){
				
				CommonsMultipartFile file=files[i];
			LOGGER.info("content-type="+file.getContentType());
			LOGGER.info("fieldName="+file.getName());
			LOGGER.info("fileName="+file.getOriginalFilename());
			LOGGER.info("size="+file.getSize());
			String path=this.servletContext.getRealPath("/tmp/");
			fileName=new Date().getTime()+"_"+file.getOriginalFilename();
			LOGGER.info("fileNamePath="+fileName+",path="+path);
			
			File myfile=new File(path,fileName);
			try {
				file.getFileItem().write(myfile);
				LOGGER.info("success....");
			} catch (Exception e) {
				LOGGER.error("failure....");
			}	
			}
		}else{
			LOGGER.info("empty........");
		}
		LOGGER.info("filename........"+fileName);
		model.addAttribute("url",request.getContextPath()+"/tmp/"+fileName);
		return "{\"success\":true,\"msg\":\"加载成功\"}";
	}
	@RequestMapping(value="/test20")
	public void upPic(HttpServletRequest request,HttpServletResponse response){
		
		String appPath=request.getSession().getServletContext().getRealPath("/");
		try {
			
			// 判断form是否为multi form
			boolean isMultipart=ServletFileUpload.isMultipartContent(request);
			LOGGER.info("isMultipart........"+isMultipart);
			if(isMultipart){
				
				FileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload fileUpload=new ServletFileUpload(factory);
				fileUpload.setHeaderEncoding("UTF-8");
				//fileUpload.setSizeMax(10000);
				List<FileItem> fileItems=(List<FileItem>)fileUpload.parseRequest(request);
				LOGGER.info("fileItems'size........"+fileItems.size());
				FileItem fileItem=null;
				File file=null;
				for(int i=0;i<fileItems.size();i++){
					
					fileItem=fileItems.get(i);
					if(!fileItem.isFormField()){
						
						String fileFullName=fileItem.getName();// 文件全名
						LOGGER.info("fileFullName="+fileFullName);
						// 设置文件存储在服务器上的位置
						String path=appPath+"upload";
						File fileUp=new File(path);
						if(!fileUp.exists()){
							fileUp.mkdirs();
						}
						file=new File(path,fileFullName);
						fileItem.write(file);
					}else{
						
						String formFieldValue=fileItem.getString("UTF-8");
						String fieldName=fileItem.getFieldName();
						LOGGER.info("formFieldValue="+formFieldValue+",fieldName="+fieldName);
					}
				}
				if(null != file){
					response.setContentType("text/html; charset=UTF-8");  
				    response.setHeader("Cache-Control", "no-cache");  
					String callback=request.getParameter("CKEditorFuncNum");
					PrintWriter out = response.getWriter();
					 out.println("<script type=\"text/javascript\"> ");  
				     out.println("window.parent.CKEDITOR.tools.callFunction("  
				                + callback + ",'" + file.getAbsolutePath() + "',''" + ")"); 
			         out.println("</script>");
			         out.flush();
			         out.close();
				}
			}
		} catch (Exception e) {
			LOGGER.error("11111111---->"+e);
		}
	}
	
	@RequestMapping(value="/test21")
	@ResponseBody
	public String upLoad(HttpServletRequest request){
		
		String kaptchaExpected=(String)request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		LOGGER.info("kaptchaExpected="+kaptchaExpected);
		String desc=request.getParameter("descContent");
		LOGGER.info("desc........"+desc);
		// 判断form是否为multi form
		boolean isMultipart=ServletFileUpload.isMultipartContent(request);
		MultiValueMap<String,MultipartFile> files=null;
		if(isMultipart){
			MultipartHttpServletRequest multipartRequest =(MultipartHttpServletRequest)request;
			Enumeration<String> list=(Enumeration<String>)multipartRequest.getParameterNames();
			String paramName="";
			String[] valueArr=null;
			while(list.hasMoreElements()){
				paramName=list.nextElement();
				valueArr=multipartRequest.getParameterValues(paramName);
				LOGGER.info("fieldName------="+paramName+",value="+Arrays.toString(valueArr));
			}
			LOGGER.info("tmpdir="+System.getProperty("java.io.tmpdir"));
			//files=multipartRequest.getMultiFileMap();
			Iterator<String> fileNames=multipartRequest.getFileNames();// 获取文件input中的name值
			String fileName="";
			CommonsMultipartFile commonsMultipartFile=null;
			List<MultipartFile> multiPartFileList=null;
			while(fileNames.hasNext()){
				
				fileName=fileNames.next();
				LOGGER.info("filename------="+fileName);
				multiPartFileList=multipartRequest.getFiles(fileName);
				//multiPartFileList=files.get(fileName);
				if(!CollectionUtils.isEmpty(multiPartFileList)){
					
					for(MultipartFile multiPartFile:multiPartFileList){
						
						commonsMultipartFile=(CommonsMultipartFile)multiPartFile;
						LOGGER.info("fieldName="+commonsMultipartFile.getName());// 获取input中name属性值
						LOGGER.info("fileName="+commonsMultipartFile.getOriginalFilename());// 文件名
						LOGGER.info("size="+commonsMultipartFile.getSize());
						
					}
				}
			}
		}
		return "{\"success\":true,\"msg\":\"操作成功\"}";
	}
	@RequestMapping(value="/test24")
	public void uploadFileOfCKEditor(@RequestParam("upload")MultipartFile multiFile,HttpServletRequest request,HttpServletResponse response){
		
		String appPath=request.getSession().getServletContext().getRealPath("/");
		try {
			if(null != multiFile){
				CommonsMultipartFile file=(CommonsMultipartFile)multiFile;
				// 设置文件存储在服务器上的位置
				String path=appPath+"upload";
				File fileUp=new File(path);
				if(!fileUp.exists()){
					fileUp.mkdirs();
				}
				String originalFileName=file.getOriginalFilename();
				String suffix=originalFileName.substring(originalFileName.lastIndexOf(".")+1);
				LOGGER.info("suffix="+suffix);
				response.setContentType("text/html; charset=UTF-8");  
				response.setHeader("Cache-Control", "no-cache");  
				PrintWriter out = response.getWriter();
				String callback=request.getParameter("CKEditorFuncNum");
				if(!"jpg".equals(suffix) && !"png".equals(suffix) && !"jpeg".equals(suffix)
						 && !"bmp".equals(suffix)){
					print(out,callback,"","上传失败,只支持jpg|png|jpeg|bmp类型的图片");
					return;
				}
				File tempFile=new File(path,originalFileName);
				file.getFileItem().write(tempFile);
				int port=request.getLocalPort();
				String fullPath="http://localhost:"+port+request.getContextPath()+File.separator+"upload"+
				            File.separator+file.getOriginalFilename();
				fullPath=fullPath.replaceAll("\\\\","\\/");
				LOGGER.info("fullPath="+fullPath);
						 
				print(out,callback,fullPath,"上传成功");
				/*out.println("<script type=\"text/javascript\"> ");  
			    out.println("window.parent.CKEDITOR.tools.callFunction("  
			                + callback + ",'" + fullPath + "',\"上传成功!\")"); 
			    out.println("</script>");
			    out.flush();
			    out.close();*/
			}
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
		}
	}
	private void print(PrintWriter out,String callback,String fullPath,String msg){
		out.println("<script type=\"text/javascript\"> ");  
	    out.println("window.parent.CKEDITOR.tools.callFunction("  
	                + callback + ",'" + fullPath + "','"+msg+"')"); 
	    out.println("</script>");
	    out.flush();
	    out.close();
	}
	/**
	 * 验证上传文件的合法性
	 * @return
	 */
	@RequestMapping(value="/test22")
	@ResponseBody
	public Map<String,Object> validateUploadFileLegal(HttpServletRequest request){
		
		Map<String,Object> result = new HashMap<String,Object>();
		long size=0;
		result.put("success",true);
		result.put("msg","");
		String filePath=request.getParameter("filePath");
		LOGGER.info("filePath="+filePath);
		FileChannel fc=null;
		if(StringUtils.hasLength(filePath)){
			
			File file = new File(filePath);
			if(file.exists() && file.isFile()){
				try {
					FileInputStream fis = new FileInputStream(file);
					fc=fis.getChannel();
					size=fc.size();
					if(size>MAX_UPLOAD_FILE_SIZE){// 超过了最大限制
						
						result.put("msg","文件大小超过了【"+MAX_UPLOAD_FILE_SIZE+"】字节");
						result.put("success",false);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
		return result;
	}
	@RequestMapping("/test25")
	@ResponseBody
	public String test18(@RequestHeader("Accept-Encoding")String encoding){
		LOGGER.info("encoding="+encoding);
		return "success";
	}
}
