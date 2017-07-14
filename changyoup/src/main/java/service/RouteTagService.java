package service;

import java.util.List;

import model.Route;
import model.Routeinfo;

public interface RouteTagService {
    public List<Routeinfo> getRoutesById(int id);
}
