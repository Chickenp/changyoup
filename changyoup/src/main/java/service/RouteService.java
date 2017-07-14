package service;

import java.util.List;

import model.Route;
import model.Routeinfo;

public interface RouteService {
	public List<Route> getRoutesById(int routeid);
	
	public String addRoute(Routeinfo routeinfo, String content);
	
	public Integer save(Route route);
	
}
