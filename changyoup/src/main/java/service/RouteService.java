package service;

import java.util.List;

import model.Route;
import model.Routeinfo;

public interface RouteService {
	public List<Route> getRoutesById(int routeid);
	
	public String addRoute(int routeid, String content) throws Exception;
	
	public Integer save(Route route);
	
	public void update(Route route);
	
}
