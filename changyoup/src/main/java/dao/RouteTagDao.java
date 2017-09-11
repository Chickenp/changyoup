package dao;

import java.util.List;

import model.Route;
import model.Routetag;
import model.Tag;

public interface RouteTagDao {
	public Integer save(Routetag routetag) ;
	
	public void delete(Routetag routetag);

	public List<Routetag> getRoutetagsByTagId(int id);
	
	public List<Routetag> getRoutetagsByRouteId(int id);
	
}