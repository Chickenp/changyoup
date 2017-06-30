package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.UserInfo;
import service.UserInfoService;
import javax.servlet.http.HttpSession;

public class GetUserInfoAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private UserInfoService userinfoService;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public void setUserinfoService(UserInfoService userinfoService){
		this.userinfoService=userinfoService;
	}
	
	@Override
	public String execute() throws Exception{
		UserInfo userinfo=userinfoService.getUserInfoById(id);
		request().setAttribute("userinfo",userinfo);
		
		return SUCCESS;
	}
}