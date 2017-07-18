package dao;

public interface RouteMongoDao{
	
	public String save(int id, String content) throws Exception;
	
	public String getRoutebyId(int id) throws Exception;
	
}