package dao.impl;

import dao.RouteMongoDao;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.ConnectException;

import org.apache.commons.io.IOUtils;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;

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
		DB mongoDatabase = mongoClient.getDB("routes");
		System.out.println("Connect to routes successfully");
		return mongoDatabase;
	}
	
	@Override
	public String save(String id, String content) throws Exception {
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
		System.out.println(gridFSDBFile.getId());
		return (String)gridFSDBFile.getId();
	}
	
	@Override
	public String getRoutebyId(String id) throws Exception {
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