package com.kritima.TechBlog.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kritima.TechBlog.web.dao.UserDao;
import com.kritima.TechBlog.web.dao.connectsql;
import com.kritima.TechBlog.web.model.Message;
import com.kritima.TechBlog.web.model.UserData;

public class loginUser extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		UserDao dao=new UserDao(connectsql.getConnect());
		UserData u=new UserData();
		u=dao.getuserbyemailnpass(email, pass);
		if(u==null)
		{
			Message m=new Message("Invalid Details! Try Again","error","alert alert-danger");
			HttpSession s=request.getSession();
			s.setAttribute("msg", m);
			response.sendRedirect("login.jsp");
		}
		else
		{
		HttpSession session=request.getSession();
		session.setAttribute("currentUser",u);
		response.sendRedirect("profile.jsp");
		}
	}

}
