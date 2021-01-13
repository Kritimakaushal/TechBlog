package com.kritima.TechBlog.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kritima.TechBlog.web.model.Message;

public class logoutUser extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		session.removeAttribute("currentUser");
		Message m=new Message("Logged out successfully","success","alert alert-success");
		session.setAttribute("msg",m);
		
		response.sendRedirect("login.jsp");
		}


}
