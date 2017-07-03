package action;

import java.util.List;

import model.UserInfo;
import service.UserInfoService;

public class GetUserInfoAction extends BaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserInfoService userinfoService;
	
	public void setUserinfoService(UserInfoService userinfoService){
		this.userinfoService=userinfoService;
	}
	
	@Override
	public String execute() throws Exception{
		List<UserInfo> userinfos=userinfoService.getAllUserInfos();
		request().setAttribute("userinfos",userinfos);
		
		return SUCCESS;
	}
}