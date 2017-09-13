package dao.impl;

import java.util.List;

import model.Route;
import model.Routelike;
import model.RoutelikeId;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.RouteLikeDao;

public class RouteLikeDaoImpl extends HibernateDaoSupport implements RouteLikeDao {
    public Integer save(Routelike routelike){
        
        getHibernateTemplate().save(routelike);
        return 1;
    }
    public Routelike getLikeByUser(RoutelikeId routelikeid){
        @SuppressWarnings("unchecked")
        List<Routelike> routelikes = (List<Routelike>) getHibernateTemplate().find(
                "from Routelike as r where r.id.routeid=? and r.id.userid=? ", routelikeid.getRouteid(),routelikeid.getUserid());
        Routelike liked = routelikes.size() > 0 ? routelikes.get(0) : new Routelike(new RoutelikeId(0,0),0);
        return liked;
    }
    public double getAvg(int routeid){
        @SuppressWarnings("unchecked")
        List <Object> res=getHibernateTemplate().find("select avg(r.point) from Routelike as r where r.id.routeid=?",routeid);
        return res.get(0)!=null?(double)(res.get(0)):0.0;
       
    }
	
}