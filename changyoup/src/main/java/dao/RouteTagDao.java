package dao;

import java.util.List;

import model.Route;
import model.Routetag;

public interface RouteTagDao {

	public List<Routetag> getRoutetagsById(int id);

}