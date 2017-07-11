package dao;

import java.util.List;

import model.Route;

public interface RouteDao {

	public Integer save(Route user);

	public void delete(Route user);

	public void update(Route user);

	public Route getRouteById(int id);

	public List<Route> getAllUsers();

}