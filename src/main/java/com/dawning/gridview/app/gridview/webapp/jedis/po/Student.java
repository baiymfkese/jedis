package com.dawning.gridview.app.gridview.webapp.jedis.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author ming
 *
 */
public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	
	private String name;
	
	private Date birthDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
public Student(){}
public Student(String name){
	this.name=name;
}

	@Override
	public String toString() {
		
		// TODO Auto-generated method stub
		return "[id="+id+",name="+name+",birthDate="+birthDate+"]";
	}
	
}
