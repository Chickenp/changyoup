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

	@Override
	public Integer addRouteInfo(Routeinfo routeinfo) {
		return routeinfoDao.save(routeinfo);
	}

	@Override
	public void updateRouteInfo(Routeinfo routeinfo) {
		routeinfoDao.update(routeinfo);
	}

	@Override
	public void deleteRouteInfo(Routeinfo routeinfo) {
		routeinfoDao.delete(routeinfo);
	}
	
	@Override
    public Routeinfo getRouteInfoById(int routeid){
		return routeinfoDao.getRouteInfoById(routeid);
    }
    
	@Override
	public List<Routeinfo> getAllRouteInfo() {
		return routeinfoDao.getAllRouteInfo();
	}
	
	@Override
	public List<Routeinfo> getRouteInfoBySearch(String searchword) {
		return routeinfoDao.getRouteInfoBySearch(searchword);
	}
}
