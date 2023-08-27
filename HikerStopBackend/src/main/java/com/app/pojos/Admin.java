package com.app.pojos;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Admin {

	@Id
	private String userid; //email


	private String pwd;
	
	
	private String uname;


	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Admin(String userid, String pwd, String uname) {
		super();
		this.userid = userid;
		this.pwd = pwd;
		this.uname = uname;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}
	
	
	
}