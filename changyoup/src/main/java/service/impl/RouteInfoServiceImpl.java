package service.impl;

import java.util.List;

import dao.RouteInfoDao;
import dao.impl.RouteInfoDaoImpl;
import model.Routeinfo;
import service.RouteInfoService;

public class RouteInfoServiceImpl implements RouteInfoService{
	private RouteInfoDao routeinfoDao;

    public void setRouteInfodao(RouteInfoDaoImpl routeinfoDao) {
        this.routeinfoDao = routeinfoDao;
    }
    public Routeinfo getRouteInfoById(int routeid){
		return routeinfoDao.getRouteInfoById(routeid);
    	
    }
}
