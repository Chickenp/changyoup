package action;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import model.UserInfo;
import service.UserInfoService;

public class UserInfoAction extends BaseAction{
	
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
	
	public String execute() throws Exception{
		List<UserInfo> userinfos=userinfoService.getAllUserInfos();
		request().setAttribute("userinfos",userinfos);
		
		return SUCCESS;
	}
	
	
	public String update() throws Exception {
		
		UserInfo userinfo = userinfoService.getUserInfoById(id);
		userinfo.setNickname(nickname);
		userinfo.setEmail(email);
		userinfo.setArea(area);
		userinfo.setSex(sex);
		userinfo.setBirthday(birthday);
		userinfoService.updateUserInfo(userinfo);
		
		return SUCCESS;
	}	
	
	public String getInfobyId()throws Exception{
		int uid=0;
		//HttpSession httpSession=session();
		//if (httpSession.getAttribute("uid")!=null){
		//	uid = (Integer)httpSession.getAttribute("uid");
		//	}
		uid=id;
		UserInfo info=userinfoService.getUserInfoById(uid);
		request().setAttribute("userid", uid);
		request().setAttribute("info", info);
		return SUCCESS;
	}
}