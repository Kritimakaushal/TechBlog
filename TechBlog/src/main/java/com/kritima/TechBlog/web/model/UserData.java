package com.kritima.TechBlog.web.model;

public class UserData {
	private int id;
	private String uname;
	private String email;
	private String pass;
	private String gender;
	private String about;
	private String profile;
	
	public UserData(String uname, String email, String pass, String gender, String about,String profile) {
		super();
		this.uname = uname;
		this.email = email;
		this.pass = pass;
		this.gender = gender;
		this.about = about;
		this.profile= profile;
	}
	public UserData() {
		
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}


	
}
