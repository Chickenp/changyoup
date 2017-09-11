package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.RouteTagDao;
import model.Comment;
import model.Route;
import model.Routeinfo;
import model.Routetag;

public class RouteTagDaoImpl extends HibernateDaoSupport implements RouteTagDao {
	
	public Integer save(Routetag routetag) {
        return (Integer) getHibernateTemplate().save(routetag);
    }
	
	public void delete(Routetag routetag) {
		getHibernateTemplate().delete(routetag);
	};

	public List<Routetag> getRoutetagsByTagId(int id){
		@SuppressWarnings("unchecked")
		List<Routetag> routetags = getHibernateTemplate().find(
				"from Routetag where tagid=?", id);
		return routetags;
	};
	
	public List<Routetag> getRoutetagsByRouteId(int id){
		@SuppressWarnings("unchecked")
		List<Routetag> routetags = getHibernateTemplate().find(
				"from Routetag where routeid=?", id);
		return routetags;
	};

}