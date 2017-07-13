package service;

import java.util.List;

<<<<<<< HEAD
import model.Route;
=======
>>>>>>> acda1ea8d526ee6bd20a93f4eb1577d63367edb9
import model.Routeinfo;

public interface RouteInfoService {
	public Integer addRouteInfo(Routeinfo routeinfo);
	
	public void updateRouteInfo(Routeinfo routeinfo);
	
	public void deleteRouteInfo(Routeinfo routeinfo);
	
	public Routeinfo getRouteInfoById(int routeid);

    public List<Routeinfo> getRouteInfoBySearch(String searchword);

	public List<Routeinfo> getAllRouteInfo();
}
