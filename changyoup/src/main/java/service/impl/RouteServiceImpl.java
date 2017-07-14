package service.impl;

import java.util.List;

import dao.RouteDao;
import dao.RouteInfoDao;
import dao.RouteMongoDao;
import dao.impl.RouteDaoImpl;
import model.Route;
import model.Routeinfo;
import service.RouteService;

public class RouteServiceImpl implements RouteService{
	private RouteDao routeDao;
	private RouteInfoDao routeinfoDao;
	private RouteMongoDao routemongoDao;

    public void setRoutedao(RouteDaoImpl routeDao) {
        this.routeDao = routeDao;
    }
    public List<Route> getRoutesById(int routeid){
		return routeDao.getRoutesById(routeid);
    	
    }


	public String addRoute(Routeinfo routeinfo, String content) {
		String routeMongoid="";
		routeinfoDao.save(routeinfo);
		int routeid = routeinfo.getRouteid();
		try{
			routeMongoid = routemongoDao.saveContent(routeid, content);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return routeMongoid;
	}
	
	@Override
	public Integer save(Route route) {
		return routeDao.save(route);
	}
}
