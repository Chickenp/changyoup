package service;

import java.util.List;

import model.Route;
import model.Routeinfo;
import model.Routetag;
import model.Tag;

public interface RouteTagService {
    public List<Routeinfo> getRoutesByTagId(int id);
    
    public List<Tag> getTagsByRouteId(int id);
    
    public Tag getTagByName(String name);
    
    public Integer addRoutetag(Routetag routetag);
    
    public Integer addTag(Tag tag);
    
    public List<Tag> getAllTags();
}
