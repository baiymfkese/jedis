/*******************************************************************************
 * @project: alms
 * @package: com.acconsys.alms.util
 * @file: LicenseUtils.java
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

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.URL;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;

public class LicenseUtils {
	private static final Logger log = Logger.getLogger(LicenseUtils.class);
	private static String LICENSE_FILE_NAME = "license.txt";
	private static int FAIL = -1;

	public static long hasValidLicense() {
//		return 100;
		long result = FAIL;
		try {
			URL resource = LicenseUtils.class.getClassLoader().getResource(LICENSE_FILE_NAME);
			File f = new File(resource.toURI());
			if(!f.exists()){
				log.error("license file not exists");
				return FAIL;
			}
			
			BufferedReader br=new BufferedReader(new InputStreamReader(new FileInputStream(f), "UTF-8"));
            String line = null;
            String license = null;
            while ((line = br.readLine()) != null) {
				line = line.trim();
				if(line.length() > 0 && !line.startsWith("#")){
					license = line;
					break;
				}
            }
            br.close();

			String mac = null;
			String startDateStr = null;
			String endDateStr = null;
			if(license == null || license.trim().length() < 68){
				log.error("license file length error");
				return FAIL;
			}else{
				String rawLicense = LicenseEncrypt.decryptPasswd(license);
				String[] licenses = rawLicense.split("-");
				if(licenses.length != 3){
					log.error("license file length expect 3, current is " + licenses.length);
					return FAIL;
				}else{
					mac = licenses[1].trim();
					startDateStr = licenses[2].trim();
					endDateStr = licenses[0].trim();
				}
			}
			List<String> macAddresses = getMacAddress();
			if(!macAddresses.contains(mac)){
				log.error("macAddresses don't match license mac");
				return FAIL;
			}
			String nowStr = LicenseConfigFrame.DATE_FORMAT.format(new Date());

			if(nowStr.compareTo(startDateStr) < 0 || nowStr.compareTo(endDateStr) > 0){
				log.error("now.before(startDate) || now.after(endDate)");
				return FAIL;
			}else{
				long now = Long.parseLong(nowStr);
				long end = Long.parseLong(endDateStr);
				result = end - now;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			log.error(ex.getMessage(), ex);
			return FAIL;
		}
		return result;
	}
	
	public static List<String> getMacAddress() throws IOException {
		String os = System.getProperty("os.name").trim().toUpperCase();
		try {
			if (os.startsWith("WINDOWS")) {
				return windowsParseMacAddress(windowsRunIpConfigCommand());
			} else if (os.startsWith("LINUX")) {
				return linuxParseMacAddress(linuxRunIfConfigCommand());
			} else {
				throw new IOException("unknown operating system: " + os);
			}
		} catch (ParseException ex) {
			ex.printStackTrace();
			throw new IOException(ex.getMessage());
		}
	}

	/*
	 * Linux stuff
	 */
	private static List<String> linuxParseMacAddress(String ipConfigResponse) throws ParseException {
		List<String> result = new ArrayList<String>();
		String separativeSign = getSeparativeSign();
		String localHost = null;
		try {
			localHost = InetAddress.getLocalHost().getHostAddress();
		} catch (java.net.UnknownHostException ex) {
			ex.printStackTrace();
			throw new ParseException(ex.getMessage(), 0);
		}

		StringTokenizer tokenizer = new StringTokenizer(ipConfigResponse, "\n");
		String lastMacAddress = null;

		while (tokenizer.hasMoreTokens()) {
			String line = tokenizer.nextToken().trim();
			boolean containsLocalHost = line.indexOf(localHost) >= 0;

			// see if line contains IP address
			if (lastMacAddress != null) {
				lastMacAddress = lastMacAddress.replace(separativeSign, "");
				if(!result.contains(lastMacAddress)){
					result.add(lastMacAddress);
				}
			}

			// see if line contains MAC address
			int macAddressPosition = line.indexOf("HWaddr");
			if (macAddressPosition <= 0)
				continue;

			String macAddressCandidate = line.substring(macAddressPosition + 6).trim();
			if (isMacAddress(macAddressCandidate)) {
				lastMacAddress = macAddressCandidate;
				continue;
			}
		}
		return result;
	}

	public static String getSeparativeSign() {
		String os = System.getProperty("os.name").trim().toUpperCase();
		if (os.startsWith("WINDOWS")) {
			return "-";
		} else if (os.startsWith("LINUX")) {
			return ":";
		} else {
			return "";
		}
	}

	private static boolean isMacAddress(String macAddressCandidate) {
		Pattern macPattern = Pattern.compile("[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}");
        Matcher m = macPattern.matcher(macAddressCandidate);
        return m.matches();

	}

	private static String linuxRunIfConfigCommand() throws IOException {
		Process p = Runtime.getRuntime().exec("ifconfig");
		InputStream stdoutStream = new BufferedInputStream(p.getInputStream());

		StringBuffer buffer = new StringBuffer();
		for (;;) {
			int c = stdoutStream.read();
			if (c == -1)
				break;
			buffer.append((char) c);
		}
		String outputText = buffer.toString();

		stdoutStream.close();

		return outputText;
	}

	/*
	 * Windows stuff
	 */
	private static List<String> windowsParseMacAddress(String ipConfigResponse) throws ParseException {
		List<String> result = new ArrayList<String>();
		String separativeSign = getSeparativeSign();
		String localHost = null;
		try {
			localHost = InetAddress.getLocalHost().getHostAddress();
		} catch (java.net.UnknownHostException ex) {
			ex.printStackTrace();
			throw new ParseException(ex.getMessage(), 0);
		}

		StringTokenizer tokenizer = new StringTokenizer(ipConfigResponse, "\n");
		String lastMacAddress = null;
		String macIdentity = "Physical Address";
		while (tokenizer.hasMoreTokens()) {
			String line = tokenizer.nextToken().trim();
			if(line.length() > 0 && (line.startsWith(macIdentity) || line.startsWith("ÎïÀíµØÖ·"))) {
				int macAddressPosition = line.indexOf(":");

				String macAddressCandidate = line.substring(macAddressPosition + 1).trim();
				if (isMacAddress(macAddressCandidate)) {
					lastMacAddress = macAddressCandidate;
					lastMacAddress = lastMacAddress.replace(separativeSign, "");
					if(!result.contains(lastMacAddress)){
						result.add(lastMacAddress);
					}
				}
			}
		}
		
		return result;
	}


	private static String windowsRunIpConfigCommand() throws IOException {
		Process p = Runtime.getRuntime().exec("ipconfig /all");
		InputStream stdoutStream = new BufferedInputStream(p.getInputStream());

		StringBuffer buffer = new StringBuffer();
		for (;;) {
			int c = stdoutStream.read();
			if (c == -1)
				break;
			buffer.append((char) c);
		}
		String outputText = buffer.toString();

		stdoutStream.close();
		
		return outputText;
	}

	/*
	 * Main
	 */
	public static void main(String[] args) {
		try {
			System.out.println("Network infos");

			System.out.println(" Operating System: " + System.getProperty("os.name"));
			System.out.println(" IP/Localhost: " + InetAddress.getLocalHost().getHostAddress());
			System.out.println(" MAC Address: " + getMacAddress());
			hasValidLicense();
		} catch (Throwable t) {
			t.printStackTrace();
		}
	}
}



/*******************************************************************************
 * <B>Revision History</B><BR>
 * [type 'revision' and press Alt + / to insert revision block]<BR>
 * 
 * [Revision on 2010-11-9 上午10:24:41 by bruce]<BR>
 * refactor hasValidLicense() method.
 * 
 * 
 * Copyright 2010 AcconSys All rights reserved.
 ******************************************************************************/