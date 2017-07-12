package service;

import java.util.List;

import model.Route;

public interface RouteService {
	public List<Route> getRoutesById(int routeid);
}
