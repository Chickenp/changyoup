package dao.impl;

import java.util.List;

import model.Route;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.RouteDao;

public class RouteDaoImpl extends HibernateDaoSupport implements RouteDao {

	public Integer save(Route route) {
		return (Integer) getHibernateTemplate().save(route);
	}

	public void delete(Route route) {
		getHibernateTemplate().delete(route);
	}

	public void update(Route route) {
		getHibernateTemplate().merge(route);
	}

	public Route getRouteById(int id) {
		@SuppressWarnings("unchecked")
		List<Route> routes = (List<Route>) getHibernateTemplate().find(
				"from Route as r where r.routeid=?", id);
		Route user = routes.size() > 0 ? routes.get(0) : null;
		return user;
	}

	public List<Route> getAllUsers() {
		@SuppressWarnings("unchecked")
		List<Route> route = (List<Route>) getHibernateTemplate()
				.find("from Route");
		return route;
	}

}