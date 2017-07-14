package dao.impl;

import java.util.List;
import model.Route;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import dao.RouteDao;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;

import org.apache.commons.io.IOUtils;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;

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
	
}