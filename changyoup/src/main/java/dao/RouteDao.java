package dao;

import java.util.List;

import model.Route;

public interface RouteDao {

	public Integer save(Route rf);

	public void delete(Route rf);

	public void update(Route rf);
	
	public Route getSingleRoute(String routeMongoid);

	public List<Route> getRoutesById(int id);

	public List<Route> getAllRoute();

}