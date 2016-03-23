/*******************************************************************************
 * @project: alms
 * @package: com.acconsys.alms.util.license
 * @file: LicenseConfigFrame.java
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

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;


public class LicenseConfigFrame extends JFrame {
	
	private static final long serialVersionUID = 2921567158415544565L;
	
	public static SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyyMMdd");
	private static SimpleDateFormat Time_FORMAT = new SimpleDateFormat(DateUtils.PATTERN_TIME);
	private static final String LINE_SEPERATOR = System.getProperty("line.separator");
	private static String LICENSE_FILE_NAME = "license.txt";
	private static String UNLIMITED = "无限制";
	
	private JTextField macField;
	private JTextField startDateField;
	private JComboBox timeSpanCombo;
	private JTextField endDateField;
	private JButton okButton;

	public LicenseConfigFrame() {
		this.setResizable(false);
		initUI();
	}
	
	private void initUI(){
		this.setTitle("ALMS License配置");
		JPanel jPanel1 = new JPanel(new GridBagLayout());
		GridBagConstraints g = new GridBagConstraints();
		g.anchor = GridBagConstraints.EAST;
		g.gridx = 0;
		g.gridy = 0;
		g.insets = new Insets(5, 5, 5, 5);
		jPanel1.add(new JLabel("Mac地址："), g);
		g.gridy = 1;
		jPanel1.add(new JLabel("开始日期："), g);
		g.gridy = 2;
		jPanel1.add(new JLabel("有效期限："), g);
		g.gridy = 3;
		jPanel1.add(new JLabel("结束日期："), g);

		g.fill = GridBagConstraints.HORIZONTAL;
		g.gridx = 1;
		g.gridy = 0;
		jPanel1.add(getMacField(), g);
		g.gridy = 1;
		jPanel1.add(getStartDateField(), g);
		g.gridy = 2;
		jPanel1.add(getTimeSpanCombo(), g);
		g.gridy = 3;
		jPanel1.add(getEndDateField(), g);
		
		JPanel buttonPane = new JPanel();
		buttonPane.add(getOkButton());
		this.getContentPane().add(jPanel1, BorderLayout.CENTER);
		this.getContentPane().add(buttonPane, BorderLayout.SOUTH);
		
		setValue();
		
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.getRootPane().setDefaultButton(getOkButton());
		this.pack();
		centerToScreen();
	}

	private void centerToScreen() {
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		Dimension componentSize = getSize();
		if (componentSize.height > screenSize.height) {
			componentSize.height = screenSize.height;
		}
		if (componentSize.width > screenSize.width) {
			componentSize.width = screenSize.width;
		}
		setLocation((screenSize.width - componentSize.width) / 2,
				(screenSize.height - componentSize.height) / 2);
	}
	
	private void setValue(){
		Calendar start = Calendar.getInstance();
		String startDate = DATE_FORMAT.format(start.getTime());
		setTextValue(getStartDateField(), startDate);
		start.add(Calendar.MONTH, 1);
		startDate = DATE_FORMAT.format(start.getTime());
		setTextValue(getEndDateField(), startDate);
	}
	
	private void setTextValue(JTextField field, String value){
		value = value==null?"":value.trim();
		field.setText(value);
	}
    
	public JTextField getMacField() {
		if(macField == null){
			macField = new JTextField(20);
		}
		return macField;
	}

	public JTextField getStartDateField() {
		if(startDateField == null){
			startDateField = new JTextField(20);
		}
		return startDateField;
	}
	
	public JComboBox getTimeSpanCombo() {
		if(timeSpanCombo == null){
			List timeSpans = new ArrayList();
			timeSpans.add(new TimeSpan("一个月", Calendar.MONTH, 1));
			timeSpans.add(new TimeSpan("三个月", Calendar.MONTH, 3));
			timeSpans.add(new TimeSpan("六个月", Calendar.MONTH, 6));
			timeSpans.add(new TimeSpan("一年", Calendar.YEAR, 1));
			timeSpans.add(new TimeSpan("两年", Calendar.YEAR, 2));
			timeSpans.add(new TimeSpan("三年", Calendar.YEAR, 3));
			timeSpans.add(new TimeSpan("四年", Calendar.YEAR, 4));
			timeSpans.add(new TimeSpan("五年", Calendar.YEAR, 5));
			timeSpans.add(new TimeSpan("十年", Calendar.YEAR, 10));
			timeSpans.add(new TimeSpan(UNLIMITED, Calendar.YEAR, 10000000));
			timeSpanCombo = new JComboBox(timeSpans.toArray());
			
			timeSpanCombo.addItemListener(new ItemListener() {
				public void itemStateChanged(ItemEvent e) {
					if(e.getStateChange() == ItemEvent.SELECTED){
						try {
							String start = getStartDateField().getText().trim();
							Date startDate = DATE_FORMAT.parse(start);
							Calendar end = Calendar.getInstance();
							end.setTime(startDate);
							TimeSpan selectedItem = (TimeSpan)timeSpanCombo.getSelectedItem();
							if(selectedItem.getText().equals(UNLIMITED)){
								setTextValue(getEndDateField(), UNLIMITED);
							}else{
								end.add(selectedItem.getField(), selectedItem.getValue());
								String endDate = DATE_FORMAT.format(end.getTime());
								setTextValue(getEndDateField(), endDate);
							}
						} catch (ParseException e1) {
							e1.printStackTrace();
						}
					}
				}
			});
		}
		return timeSpanCombo;
	}

	public JTextField getEndDateField() {
		if(endDateField == null){
			endDateField = new JTextField(20);
			endDateField.setEditable(false);
		}
		return endDateField;
	}
	
	public JButton getOkButton() {
		if(okButton == null){
			okButton = new JButton("确定");
			okButton.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					saveDbConfig();
				}
			});
		}
		return okButton;
	}
	
	private void saveDbConfig() {
		String separator = System.getProperty("file.separator");
		String licenseFileDir = System.getProperty("user.dir") + separator + LICENSE_FILE_NAME;
		File licenseFile = new File(licenseFileDir);
		String mac = getMacField().getText().trim();
		String separativeSign = LicenseUtils.getSeparativeSign();
		mac = mac.replace(separativeSign, "");
		if(mac.length() < 12){
			JOptionPane.showMessageDialog(this, "请正确填写mac地址");
			return;
		}
		String startDate = getStartDateField().getText().trim();
		try {//校验日期数据
			Long.parseLong(startDate);
			DATE_FORMAT.parse(startDate);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(this, "请正确填写开始日期");
			return;
		}
		String endDate = getEndDateField().getText().trim();
		try {
//			FileWriter writer = new FileWriter(licenseFile);
			StringBuilder sb = new StringBuilder("# ALMS License:");
			sb.append(mac);
			sb.append(" - ");
			sb.append(startDate);
			sb.append(" - ");
			sb.append(endDate);
			
			OutputStreamWriter out = new OutputStreamWriter(
					new FileOutputStream(licenseFile), "UTF-8");

			out.write(sb.toString());
			out.write(LINE_SEPERATOR);
			StringBuilder time = new StringBuilder("# Generate Time: ");
			time.append(Time_FORMAT.format(new Date()));
			out.write(time.toString());
			out.write(LINE_SEPERATOR);
			out.write(LicenseEncrypt.encryptPasswd(getRawCode(mac, startDate, endDate)));
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private String getRawCode(String mac, String startDate, String endDate){
		StringBuilder sb = new StringBuilder(endDate);
		sb.append(" - ");
		sb.append(mac);
		sb.append(" - ");
		sb.append(startDate);
		return sb.toString();
	}
	
	public static void main(String[] args) {
		LicenseConfigFrame frame = new LicenseConfigFrame();
		frame.setVisible(true);
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