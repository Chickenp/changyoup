package service.impl;

import java.util.ArrayList;
import java.util.List;

import dao.RouteInfoDao;
import dao.RouteTagDao;
import dao.UserInfoDao;
import dao.impl.RouteInfoDaoImpl;
import dao.impl.RouteTagDaoImpl;
import model.Routeinfo;
import model.Routetag;
import service.RouteTagService;

public class RouteTagServiceImpl implements RouteTagService {

	private RouteTagDao routetagDao;
	private RouteInfoDao routeinfoDao;
	
	public void setRouteTagdao(RouteTagDaoImpl routetagDao) {
        this.routetagDao = routetagDao;
    }
	
	public void setRouteInfodao(RouteInfoDaoImpl routeinfoDao) {
        this.routeinfoDao = routeinfoDao;
    }
	@Override
    public List<Routeinfo> getRoutesById(int id){
    	List<Routetag> routetags = routetagDao.getRoutetagsById(id);
    	List<Routeinfo> routeinfos = new ArrayList<Routeinfo>(routetags.size());
    	for(int i = 0; i<routetags.size(); i++){
    		int j = routetags.get(i).getRouteid();
    		Routeinfo r = routeinfoDao.getRouteInfoById(j);
    		routeinfos.add(r);
    	}
        return routeinfos;
    }
}