package com.kritima.TechBlog.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.kritima.TechBlog.web.dao.PostDao;
import com.kritima.TechBlog.web.dao.connectsql;
import com.kritima.TechBlog.web.model.PostsData;
import com.kritima.TechBlog.web.model.UserData;

@MultipartConfig
public class addBlogs extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		int cid=Integer.parseInt(request.getParameter("cid"));
		String ptitle=request.getParameter("ptitle");
		String pcontent=request.getParameter("pcontent");
		String pcode=request.getParameter("pcode");
		Part part=request.getPart("pfile");
		HttpSession s=request.getSession();
		UserData user=(UserData)s.getAttribute("currentUser");
		int uid=user.getId();
		PostsData post=new PostsData(ptitle,pcontent,pcode,part.getSubmittedFileName(),null,cid,uid);
		PostDao dao=new PostDao(connectsql.getConnect());
		if(dao.saveAddedBlog(post))
			out.println("ok");
		else
			out.println("no");
	}

}
