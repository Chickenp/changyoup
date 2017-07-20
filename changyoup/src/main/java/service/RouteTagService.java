package service;

import java.util.List;

import model.Route;
import model.Routeinfo;
import model.Routetag;
import model.Tag;

public interface RouteTagService {
    public List<Routeinfo> getRoutesById(int id);
    
    public List<Tag> getTagsById(int id);
    
    public Tag getTagByName(String name);
    
    public Integer addRoutetag(Routetag routetag);
    
    public Integer addTag(Tag tag);
}
