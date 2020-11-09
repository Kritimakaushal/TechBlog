package com.kritima.TechBlog.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.kritima.TechBlog.web.model.PostsData;
import com.kritima.TechBlog.web.model.categoryData;

public class PostDao {
	Connection conn;

	public PostDao(Connection conn) {
		this.conn = conn;
	}
	
	public ArrayList<categoryData> getCategories()
	{
		ArrayList<categoryData> cat=null;
		try {
			String s="Select * from categories";
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(s);
			cat=new ArrayList<categoryData>();
			while(rs.next())
			{
				int cid=rs.getInt("cid");
				String cname=rs.getString("cname");
				String descr=rs.getString("descr");
				categoryData c=new categoryData(cid,cname,descr);
				cat.add(c);
			}
		}
		catch(Exception e) {			
			System.out.println(e);
		}				
		return cat;
	}
	
	public boolean saveAddedBlog(PostsData p)
	{
		try {
		String sql="insert into posts (ptitle,pcontent,pcode,pPic,cid,uid) values (?,?,?,?,?,?)";
		PreparedStatement st=conn.prepareStatement(sql);
		st.setString(1, p.getPtitle());
		st.setString(2, p.getPcontent());
		st.setString(3, p.getPcode());
		st.setString(4, p.getpPic());
		st.setInt(5, p.getCid());
		st.setInt(6, p.getUid());
		st.executeUpdate();
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public List<PostsData> getAllPosts(){
		List<PostsData> list=new ArrayList<PostsData>();
		try {
			PreparedStatement st=conn.prepareStatement("Select * from posts");
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				
				int pid=rs.getInt("pid");
				String ptitle=rs.getString("ptitle");
				String pcontent=rs.getString("pcontent");
				String pcode=rs.getString("pcode");
				String pPic=rs.getString("pPic");
				Timestamp date=rs.getTimestamp("pdate");
				int cid=rs.getInt("cid");
				int uid=rs.getInt("uid");
				PostsData post=new PostsData(pid,ptitle,pcontent,pcode,pPic,date,cid,uid);
				list.add(post);
			}
		}
		catch(Exception e) {
			
		}
		return list;
	}
	
	public List<PostsData> getPostsByCid(int cid){
		List<PostsData> list=new ArrayList<PostsData>();
		try {
			PreparedStatement st=conn.prepareStatement("Select * from posts where cid="+cid);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				int pid=rs.getInt("pid");
				String ptitle=rs.getString("ptitle");
				String pcontent=rs.getString("pcontent");
				String pcode=rs.getString("pcode");
				String pPic=rs.getString("pPic");
				Timestamp date=rs.getTimestamp("pdate");
				int uid=rs.getInt("uid");
				PostsData post=new PostsData(pid,ptitle,pcontent,pcode,pPic,date,cid,uid);
				list.add(post);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
