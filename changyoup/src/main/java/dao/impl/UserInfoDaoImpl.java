package dao.impl;

import java.util.List;

import model.User;
import model.UserInfo;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.UserInfoDao;

public class UserInfoDaoImpl extends HibernateDaoSupport implements UserInfoDao {

	@Override
	public Integer save(UserInfo userinfo) {
		return (Integer) getHibernateTemplate().save(userinfo);
	}

	@Override
	public void delete(UserInfo userinfo) {
		getHibernateTemplate().delete(userinfo);
		
	}

	@Override
	public void update(UserInfo userinfo) {
		getHibernateTemplate().merge(userinfo);
		
	}

	@Override
	public UserInfo getUserInfoById(int id) {
		@SuppressWarnings("unchecked")
		List<UserInfo> userinfos = (List<UserInfo>) getHibernateTemplate().find(
				"from UserInfo as u where u.userid=?", id);
		UserInfo userinfo = userinfos.size() > 0 ? userinfos.get(0) : null;
		return userinfo;
	}

	@Override
	public List<UserInfo> getAllUserInfo() {
		@SuppressWarnings("unchecked")
		List<UserInfo> users = (List<UserInfo>) getHibernateTemplate()
				.find("from UserInfo");
		return users;
	}



}