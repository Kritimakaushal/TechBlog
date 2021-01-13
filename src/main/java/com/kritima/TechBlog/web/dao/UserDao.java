package com.kritima.TechBlog.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kritima.TechBlog.web.model.UserData;

public class UserDao {

		private Connection conn;

		public UserDao(Connection conn) {
			this.conn = conn;
		}
		
		public boolean registeruser(UserData u)
		{
			try {
				
				String sql="insert into users (uname,email,pass,gender,about) values (?,?,?,?,?)";
				PreparedStatement st=conn.prepareStatement(sql);
				st.setString(1, u.getUname());
				st.setString(2, u.getEmail());
				st.setString(3, u.getPass());
				st.setString(4, u.getGender());
				st.setString(5, u.getAbout());
			//	st.setString(6, u.getProfile());
				st.executeUpdate();
				return true;
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return false;
		}
		
		public UserData getuserbyemailnpass(String email,String pass)
		{
			UserData u=null;
			try {
				String sql="Select * from users where email=? and pass=?";
				PreparedStatement st=conn.prepareStatement(sql);
				st.setString(1,email);
				st.setString(2,pass);
				ResultSet rs=st.executeQuery();
				if(rs.next())
				{
					u=new UserData();
					u.setUname(rs.getString("uname"));
					u.setEmail(rs.getString("email"));
					u.setPass(rs.getString("pass"));
					u.setGender(rs.getString("gender"));
					u.setAbout(rs.getString("about"));
					u.setProfile(rs.getString("profile"));
					return u;
				}
			}catch(Exception e)
			{
				System.out.println(e);
			}
			return u;
		}
		
}
