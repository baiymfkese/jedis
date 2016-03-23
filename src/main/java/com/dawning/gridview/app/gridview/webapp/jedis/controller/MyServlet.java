package com.dawning.gridview.app.gridview.webapp.jedis.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class MyServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ServletConfig sc=getServletConfig();
		System.out.println("scs="+getServletName());
	}

	@Override
	public final void init() throws ServletException {
		System.out.println("init123.....");
	}

	
}
