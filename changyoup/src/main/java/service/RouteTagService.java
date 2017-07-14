package service;

import java.util.List;

import model.Route;
import model.Routeinfo;
import model.Tag;

public interface RouteTagService {
    public List<Routeinfo> getRoutesById(int id);
    
    public List<Tag> getTagsById(int id);
}
