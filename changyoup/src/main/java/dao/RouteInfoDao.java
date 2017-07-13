package dao;

import java.util.List;

import model.Routeinfo;

public interface RouteInfoDao {

	public Integer save(Routeinfo rf);

	public void delete(Routeinfo rf);

	public void update(Routeinfo rf);

	public Routeinfo getRouteInfoById(int id);

	public List<Routeinfo> getAllRouteInfo();
	
	public List<Routeinfo> getRouteInfoBySearch(String searchword) ;

}