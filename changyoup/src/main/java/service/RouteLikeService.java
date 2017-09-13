package service;

import java.util.List;

import model.Routelike;
import model.RoutelikeId;

public interface RouteLikeService {
    public Integer save(Routelike routelike);
    public Routelike getLikeByUser(RoutelikeId routelikeid);
    public double getAvg(int routeid);
}
