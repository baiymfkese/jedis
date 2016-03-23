package com.dawning.gridview.app.gridview.webapp.jedis.controller;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dawning.gridview.app.gridview.webapp.jedis.po.Student;
import com.dawning.gridview.app.gridview.webapp.jedis.service.StudentServiceI;
import com.dawning.gridview.app.gridview.webapp.jedis.util.JsonTool;

/**
 * 用户控制器
 * @author guoming
 *
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private static final Logger LOGGER=Logger.getLogger(UserController.class);
    
    @Autowired
    private StudentServiceI studentService;
    
	@RequestMapping("/goHomePage")
	public ModelAndView goHomePage(){
		LOGGER.info("进入主页-------");
	    ModelAndView mav = new ModelAndView();
	    mav.setViewName("home");
	    mav.addObject("greet","hello everyone!");
		return mav;
	}
	@RequestMapping("/goStudentList")
	public ModelAndView getStudentList(HttpServletResponse response,HttpServletRequest request){
		
		try {
			String uri=request.getRequestURI();
			LOGGER.info("uri="+uri);
			String id=request.getParameter("id");
			List<Student> studentList=new ArrayList<Student>();
			if(StringUtils.hasLength(id)){
				Student student=studentService.getStudentById(Integer.valueOf(id));
				if(null != student){
					studentList.add(student);
				}
			}else{
				
				studentList=studentService.getStudentList();
			}
			String jsonStr=JsonTool.getJsonString4List(studentList,null,null);
			Writer writer=response.getWriter();
			writer.write("{msg:"+jsonStr+",result:true}");
			writer.close();
			LOGGER.info("getStudentList.......end");
			return null;
		} catch (IOException e) {
			LOGGER.error("getStudentList error,cause:"+e);
		}
		return null;
	}
	@RequestMapping("/addStudent")
	public ModelAndView addStudent(HttpServletResponse response,HttpServletRequest request){
		   
		String name=request.getParameter("name");
		Student student=new Student();
		student.setName(name);
		student.setBirthDate(new Date());
		studentService.addStudent(student);
		try {
			Writer writer=response.getWriter();
			writer.write("{result:true}");
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return null;
	}
}
