package com.kritima.TechBlog.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kritima.TechBlog.web.dao.UserDao;
import com.kritima.TechBlog.web.dao.connectsql;
import com.kritima.TechBlog.web.model.UserData;

public class registerUser extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String check=request.getParameter("check");
	if(check==(null))
		response.sendRedirect("register.jsp");
	else {
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String gender=request.getParameter("gender");
		String about=request.getParameter("about");
		String profile=request.getParameter("profile");
		
		UserData u=new UserData(uname,email,pass,gender,about,profile);
		
		UserDao dao=new UserDao(connectsql.getConnect());
		if(dao.registeruser(u))
		{
			RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.forward(request,response);
		}
		else
		{
			RequestDispatcher rd= request.getRequestDispatcher("error.jsp");
			rd.forward(request,response);
		}
	}
	}

}
