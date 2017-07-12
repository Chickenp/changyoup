package service.impl;

import java.util.List;

import dao.RouteDao;
import dao.impl.RouteDaoImpl;
import model.Route;
import service.RouteService;

public class RouteServiceImpl implements RouteService{
	private RouteDao routeDao;

    public void setRoutedao(RouteDaoImpl routeDao) {
        this.routeDao = routeDao;
    }
    public List<Route> getRoutesById(int routeid){
		return routeDao.getRoutesById(routeid);
    	
    }
}
