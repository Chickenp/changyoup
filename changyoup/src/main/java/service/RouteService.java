package service;

import java.util.List;

import model.Route;
import model.Routeinfo;

public interface RouteService {
	public List<Route> getRoutesById(int routeid);
	
	public String addRouteContent(String id, String content) throws Exception;
	
	public String getRouteContentbyId(String id) throws Exception;
	
	public Integer save(Route route);
	
	public void update(Route route);
	
	public Route getSingleRoute(String routeMongoid);
	
}
