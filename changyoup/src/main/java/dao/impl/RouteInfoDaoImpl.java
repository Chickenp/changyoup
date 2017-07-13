package dao.impl;

import java.util.List;

import model.Routeinfo;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.RouteInfoDao;

public class RouteInfoDaoImpl extends HibernateDaoSupport implements RouteInfoDao {

	public Integer save(Routeinfo route) {
		return (Integer) getHibernateTemplate().save(route);
	}

	public void delete(Routeinfo route) {
		getHibernateTemplate().delete(route);
	}

	public void update(Routeinfo route) {
		getHibernateTemplate().merge(route);
	}

	public Routeinfo getRouteInfoById(int id) {
		@SuppressWarnings("unchecked")
		List<Routeinfo> routes = (List<Routeinfo>) getHibernateTemplate().find(
				"from Routeinfo as r where r.routeid=?", id);
		Routeinfo routeinfo = routes.size() > 0 ? routes.get(0) : null;
		return routeinfo;
	}

	public List<Routeinfo> getAllRouteInfo() {
		@SuppressWarnings("unchecked")
		List<Routeinfo> routeinfo = (List<Routeinfo>) getHibernateTemplate()
				.find("from Routeinfo");
		return routeinfo;
	}
	
	public List<Routeinfo> getRouteInfoBySearch(String searchword){
		@SuppressWarnings("unchecked")
		List<Routeinfo> routeinfos = (List<Routeinfo>) getHibernateTemplate()
				.find("from Routeinfo as rf where r.routetitle like ?",'%'+ searchword +'%');
		return routeinfos;
	}

}