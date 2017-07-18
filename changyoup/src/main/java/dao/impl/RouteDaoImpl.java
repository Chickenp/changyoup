package dao.impl;

import java.util.List;
import model.Route;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import dao.RouteDao;

public class RouteDaoImpl extends HibernateDaoSupport implements RouteDao {
	
	public Integer save(Route route) {
		getHibernateTemplate().save(route);
		return 1;
	}

	public void delete(Route route) {
		getHibernateTemplate().delete(route);
	}

	public void update(Route route) {
		getHibernateTemplate().merge(route);
	}

	public List<Route> getRoutesById(int id) {
		@SuppressWarnings("unchecked")
		List<Route> routes = (List<Route>) getHibernateTemplate().find(
				"from Route as r where r.routeid=? order by r.routedate asc", id);
		Route routeinfo = routes.size() > 0 ? routes.get(0) : null;
		return routes;
	}

	public List<Route> getAllRoute() {
		@SuppressWarnings("unchecked")
		List<Route> routeinfo = (List<Route>) getHibernateTemplate()
				.find("from Route");
		return routeinfo;
	}

	@Override
	public Route getSingleRoute(String routeMongoid) {
		@SuppressWarnings("unchecked")
		List<Route> routes = (List<Route>) getHibernateTemplate().find(
				"from Route as r where r.routeMongoid=?", routeMongoid);
		Route route = routes.size() > 0 ? routes.get(0) : null;
		return route;
	}
	
}