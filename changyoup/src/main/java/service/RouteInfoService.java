package service;

import java.util.List;

import model.Route;
import model.Routeinfo;

public interface RouteInfoService {
	public Routeinfo getRouteInfoById(int routeid);
	
    public List<Routeinfo> getRouteInfoBySearch(String searchword);
}
