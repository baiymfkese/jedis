/*******************************************************************************
 * @project: alms
 * @package: com.acconsys.alms.util.license
 * @file: LicenseEncrypt.java
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


public class LicenseEncrypt {
	private static int BIT_LEN = 32;
	private static int MOVE_BIT_COUNT = 2;
	private static int MOVE_INCREMENT = 3;//25000可变成中文;
	
	public static void main(String[] args) {
		String encryptText = "20110318 - 002713B4EA6C - 20100318";
//		String encryptText = "0026C7297B94 - 20100917 - 20110317";

		String encode = encryptPasswd(encryptText);
		System.out.println("encode:" + encode);
		String code = decryptPasswd(encode);
		System.out.println("code:" + code);
	}
	
	public static String encryptPasswd(String raw){
		return Password.encryptPasswd(raw);
	}
	
	public static String decryptPasswd(String encode){
		return Password.decryptPasswd(encode);
	}

	/**
	 * 加密：先左移MOVE_BIT_COUNT位，然后加MOVE_INCREMENT，再转换成普通字符
	 * @param raw
	 * @return
	 */
	public static String encode(String raw){
		char[] charArray = raw.toCharArray();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < charArray.length; i++) {
			int a = charArray[i];
			a = a << MOVE_BIT_COUNT;
			a += MOVE_INCREMENT;
			String binaryString = Integer.toBinaryString(a);
			binaryString = fullString(binaryString);
			sb.append(binaryString);
		}
		StringBuilder sb2 = toChars(sb.toString());
		return sb2.toString();
	}
	
	/**
	 * 解密：先减MOVE_INCREMENT，然后右移MOVE_BIT_COUNT位，再转换成普通字符
	 * @param raw
	 * @return
	 */
	public static String decode(String encode){
		char[] charArray = encode.toCharArray();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < charArray.length; i++) {
			int a = charArray[i] - MOVE_INCREMENT;
			a = a >> MOVE_BIT_COUNT;
			String binaryString = Integer.toBinaryString(a);
			binaryString = fullString(binaryString);
			sb.append(binaryString);
		}
		StringBuilder sb2 = toChars(sb.toString());
		return sb2.toString();
	}

	private static StringBuilder toChars(String string) {
		int length = string.length() / BIT_LEN;
		StringBuilder sb2 = new StringBuilder();
		for (int i = 0; i < length; i++) {
			String bin = string.substring(i*BIT_LEN, i*BIT_LEN + BIT_LEN);
			Integer valueOf = Integer.valueOf(bin, 2);
			char s = (char)valueOf.intValue();
			sb2.append(s);
		}
		return sb2;
	}
	
	private static String fullString(String value){
		int length = value.length();
		StringBuilder sb = new StringBuilder();
		while(sb.length() +  length < BIT_LEN){
			sb.append("0");
		}
		return sb + value;
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