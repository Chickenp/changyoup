package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.RouteTagDao;
import model.Route;
import model.Routeinfo;
import model.Routetag;

public class RouteTagDaoImpl extends HibernateDaoSupport implements RouteTagDao {

	public List<Routetag> getRoutetagsById(int id){
		@SuppressWarnings("unchecked")
		List<Routetag> routetags = getHibernateTemplate().find(
				"from Routetag where tagid=?", id);
		return routetags;
	};

}