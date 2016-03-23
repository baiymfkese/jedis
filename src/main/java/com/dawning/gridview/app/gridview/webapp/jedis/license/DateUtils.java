package com.dawning.gridview.app.gridview.webapp.jedis.license;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

/**
 * 
 * @author acconsys-hexm
 * 
 */
public class DateUtils {

	public static String PATTERN_TIME = "yyyy-MM-dd HH:mm:ss";
	public static String PATTERN_DATE = "yyyy-MM-dd";
	public static String PATTERN_DATE1 = "MM/dd/yyyy";
	public static String PATTERN_DATE_STR = "yyyyMMdd";

	public static Date stringToDate(String dateStr, String pattern) {
		DateFormat format = new SimpleDateFormat(pattern);

		Date date = null;
		try {
			date = format.parse(dateStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static Date getToday() {
		Date today=new Date();
		
		return today;
	}

	
	public static String toString(Date date) {
		if (date == null)
			return null;
		else
			return new SimpleDateFormat(PATTERN_TIME).format(date);
	}
	
	public static String getTodayStr() {
		DateFormat todayFormat = new SimpleDateFormat(PATTERN_DATE_STR);
		String curDate = todayFormat.format(new Date());
		return curDate;
	}
	
	public static Date XMLGregorianCalendarToDate(XMLGregorianCalendar gc){
		return new Date(gc.toGregorianCalendar().getTimeInMillis());
	}
	
	public static XMLGregorianCalendar dateToXMLGregorianCalendar(Date date){
		GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(date);
        XMLGregorianCalendar gc = null;
		try {
			gc = DatatypeFactory.newInstance().newXMLGregorianCalendar(cal);
		} catch (DatatypeConfigurationException e) {
			e.printStackTrace();
		}
		return gc;
	}
	
//	public static void main(String[] args) {
//		System.out.println("----"+System.currentTimeMillis());
//		
//		Calendar calendar=Calendar.getInstance();
//		calendar.setTimeInMillis(1300544332955L);
//		System.out.println("year="+calendar.get(Calendar.YEAR)+",month="+calendar.get(Calendar.MONTH)+",day="+calendar.get(Calendar.DAY_OF_MONTH));
//	}
}
/*******************************************************************************
 * <B>Revision History</B><BR>
 * [type 'revision' and press Alt + / to insert revision block]<BR>
 * Add the latest revision history at top of revision history.<BR>
 * 
 * [Revision on 2010-8-25 下午04:15:24 by duanyu]<BR>
 * add method XMLGregorianCalendar2Date and Date2XMLGregorianCalendar
 * 
 * Copyright 2010 AcconSys All rights reserved.
 ******************************************************************************/
