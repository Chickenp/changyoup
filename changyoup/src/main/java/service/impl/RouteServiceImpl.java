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
	private RouteMongoDao routeMongoDao;

    public void setRouteDao(RouteDao routeDao) {
        this.routeDao = routeDao;
    }
    
    public void setRouteMongoDao(RouteMongoDao routeMongoDao) {
        this.routeMongoDao = routeMongoDao;
    }
    
    public List<Route> getRoutesById(int routeid){
		return routeDao.getRoutesById(routeid);
    	
    }


	public String addRouteContent(String id, String content) throws Exception {
		String routeMongoid="";
		try{
			routeMongoid = routeMongoDao.save(id, content);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return routeMongoid;
	}
	
	public Integer save(Route route) {
		return routeDao.save(route);
	}
	
	public void update(Route route){
		routeDao.update(route);
	}

	@Override
	public String getRouteContentbyId(String id){
		String content="";
		try{
			content = routeMongoDao.getRoutebyId(id);
		}catch (Exception e) {
			return content;
		}
		return content;
	}

	@Override
	public Route getSingleRoute(String routeMongoid) {
		return routeDao.getSingleRoute(routeMongoid);
	}
}
