/*******************************************************************************
 * @project: alms
 * @package: com.acconsys.alms.util.license
 * @file: TimeSpan.java
 * @author: bruce
 * @created: 2010-9-17
 * @purpose:
 * 
 * @version: 1.0
 * 
 * Revision History at the end of file.
 * 
 * Copyright 2010 AcconSys All rights reserved.
 ******************************************************************************/

package com.dawning.gridview.app.gridview.webapp.jedis.license;

public class TimeSpan {

	private String text;
	private int field;
	private int value;

	public TimeSpan(String text, int field, int value) {
		this.text = text;
		this.field = field;
		this.value = value;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getField() {
		return field;
	}

	public void setField(int field) {
		this.field = field;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return text;
	}
}



/*******************************************************************************
 * <B>Revision History</B><BR>
 * [type 'revision' and press Alt + / to insert revision block]<BR>
 * 
 * 
 * 
 * Copyright 2010 AcconSys All rights reserved.
 ******************************************************************************/