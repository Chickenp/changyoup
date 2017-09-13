package service.impl;

import java.util.ArrayList;
import java.util.List;

import model.Routelike;
import model.RoutelikeId;
import dao.RouteLikeDao;
import service.RouteLikeService;

public class RouteLikeServiceImpl implements RouteLikeService {
    private RouteLikeDao routelikeDao;

    public void setRoutelikeDao(RouteLikeDao routelikeDao) {
        this.routelikeDao = routelikeDao;
    }

    public RouteLikeDao getRoutelikeDao() {
        return routelikeDao;
    }

    public Integer save(Routelike routelike){
        routelikeDao.save(routelike);
        System.out.println("DMN");
        return 1;
    }

    public Routelike getLikeByUser(RoutelikeId routelikeid){
        
        return  routelikeDao.getLikeByUser(routelikeid);
    }

    public double getAvg(int routeid){
        return routelikeDao.getAvg(routeid);
    }
}