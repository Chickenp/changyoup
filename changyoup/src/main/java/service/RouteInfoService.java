package service;

import java.util.List;

import model.Routeinfo;

public interface RouteInfoService {
	public Integer addRouteInfo(Routeinfo routeinfo);
	
	public void updateRouteInfo(Routeinfo routeinfo);
	
	public void deleteRouteInfo(Routeinfo routeinfo);
	
	public Routeinfo getRouteInfoById(int routeid);
	
	public List<Routeinfo> getAllRouteInfo();
	
	public List<Routeinfo> getRouteInfoBySearch(String searchword) ;
}
