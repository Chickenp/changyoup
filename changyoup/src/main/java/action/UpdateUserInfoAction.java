package action;

import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;

import model.UserInfo;
import service.UserInfoService;

public class UpdateUserInfoAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String nickname;
	private String email;
	private String area;
	private int sex;
	private Date birthday;
	
	private UserInfoService userinfoService;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname=nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getArea(){
		return area;
	}
	
	public void setArea(String area){
		this.area=area;
	}
	public int getSex(){
		return sex;
	}
	
	public void setSex(int sex){
		this.sex=sex;
	}
	
	public Date getBirthday(){
		return birthday;
	}
	
	public void setBirthday(Date birthday){
		this.birthday=birthday;
	}
	
	public void setUserinfoService(UserInfoService userinfoService){
		this.userinfoService=userinfoService;
	}
	
	@Override
	public String execute() throws Exception {

		UserInfo userinfo = userinfoService.getUserInfoById(id);
		userinfo.setNickname(nickname);
		userinfo.setEmail(email);
		userinfo.setArea(area);
		userinfo.setSex(sex);
		userinfo.setBirthday(birthday);
		userinfoService.updateUserInfo(userinfo);

		return SUCCESS;
	}	
}