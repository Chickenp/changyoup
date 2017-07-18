package dao;

public interface RouteMongoDao{
	
	public String save(String id, String content) throws Exception;
	
	public String getRoutebyId(String id) throws Exception;
	
}