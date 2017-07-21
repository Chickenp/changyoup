package dao;

import java.util.List;

import model.Route;
import model.Routetag;
import model.Tag;

public interface RouteTagDao {
	public Integer save(Routetag routetag) ;

	public List<Routetag> getRoutetagsById(int id);
	
	public List<Routetag> getRoutetagsByRouteId(int id);
	
	

}