package dao.impl;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;

import dao.RouteMongoDao;

public class RouteMongoDaoImpl implements RouteMongoDao{
	
	private MongoClient mongoClient;
	private GridFS gridFS;

	public void setMongoClient(MongoClient mongoClient) {
		this.mongoClient = mongoClient;
	}

	public MongoClient getMongoClient() {
		return mongoClient;
	}

	private DB connetdb() {
		DB mongoDatabase = mongoClient.getDB("plans");
		System.out.println("Connect to plans successfully");
		return mongoDatabase;
	}
	
	public String saveContent(int id, String content) throws Exception {
		DB database = connetdb();
		gridFS = new GridFS(database);
		InputStream is = new ByteArrayInputStream(content.getBytes("UTF-8"));
		DBObject query = new BasicDBObject("_id", id);
		GridFSDBFile gridFSDBFile = gridFS.findOne(query);
		if (gridFSDBFile!=null){
			gridFS.remove(query);
		}
		GridFSInputFile gridFSInputFile = gridFS.createFile(is);
		gridFSInputFile.setId(id);
		//gridFSInputFile.setFilename(fileName);
		// gridFSInputFile.setChunkSize();
		// gridFSInputFile.setContentType();
		// gridFSInputFile.setMetaData();
		gridFSInputFile.save();
		
		gridFSDBFile = gridFS.findOne(query);
		return (String) gridFSDBFile.getId();
	}
	
	
	public String getRoutebyId(int id) throws Exception {
		DB database = connetdb();
		gridFS = new GridFS(database);
		DBObject query = new BasicDBObject("_id", id);
		GridFSDBFile gridFSDBFile = gridFS.findOne(query);
		InputStream is = gridFSDBFile.getInputStream();
		byte[] bytes = IOUtils.toByteArray(is);
		String route=new String(bytes,"utf-8");
		//String plan = java.util.Base64.getEncoder().encodeToString(bytes);
		return route;
	}
}