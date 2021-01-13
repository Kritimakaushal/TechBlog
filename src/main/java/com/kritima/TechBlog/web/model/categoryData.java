package com.kritima.TechBlog.web.model;

public class categoryData {
	private int cid;
	private String cname;
	private String descr;
	
	public categoryData() {
		
	}
	
	public categoryData(int cid, String cname, String descr) {
		this.cid = cid;
		this.cname = cname;
		this.descr = descr;
	}

	public categoryData(String cname, String descr) {
		this.cname = cname;
		this.descr = descr;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}
	
	
}
