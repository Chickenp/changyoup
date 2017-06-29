package dao;

import java.util.List;

import model.UserInfo;

public interface UserInfoDao {

	public Integer save(UserInfo user);

	public void delete(UserInfo user);

	public void update(UserInfo user);

	public UserInfo getUserInfoById(int id);

	public List<UserInfo> getAllUserInfo();

}