package model;

import java.sql.Date;

public class UserInfo implements java.io.Serializable {

	private Integer userid;
	private String nickname;
	private int sex;
	private String realname;
	private Date birthday;
	
	public UserInfo() {
	}

	public UserInfo(String nickname,int sex, String realname,Date birthday) {
		this.nickname=nickname;
		this.sex = sex;
		this.realname = realname;
		this.birthday=birthday;
	}

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getsex() {
		return this.sex;
	}

	public void setsex(int sex) {
		this.sex = sex;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}
	
	public Date getBirthday(){
		return this.birthday;
	}
	
	public void setBirthday(Date birthday){
		this.birthday=birthday;
	}
}
