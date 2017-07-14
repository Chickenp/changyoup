package dao;

public interface RouteMongoDao{
	
	public String saveContent(int id, String content) throws Exception;
	
	public String getRoutebyId(int id) throws Exception;
	
}