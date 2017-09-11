package service.impl;

import java.util.ArrayList;
import java.util.List;

import dao.RouteLikeDao;
import service.RouteLikeService;

public class RouteLikeServiceImpl implements RouteLikeService {
	private RouteLikeDao routelikeDao;
	
	public void setRoutelikeDao(RouteLikeDao routelikeDao) {
		this.routelikeDao = routelikeDao;
	}

	public RouteLikeDao getRoutelikeDao(){
		return routelikeDao;
	}
}