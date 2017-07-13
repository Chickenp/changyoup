package dao;

import com.mongodb.gridfs.GridFSDBFile;

public interface PlanDao {

	public String getPlanbyId(int id) throws Exception;
	
	public void save(int id,String plan) throws Exception;
}
