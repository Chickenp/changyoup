package dao.impl;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.apache.commons.io.IOUtils;
import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;


public class HtmlDaoImpl implements dao.HtmlDao{
    private MongoClient mongoClient;
    
    public String getHtmlById(String id) throws Exception{
        ObjectId oid=new ObjectId(id);
        GridFS gridFS = new GridFS(mongoClient.getDB("chp"));
        
        GridFSDBFile out =gridFS.findOne( new BasicDBObject( "_id" ,oid));
        ByteArrayOutputStream bao = null;
        byte[] file = null;
        bao = new ByteArrayOutputStream();
        out.writeTo(bao);
        InputStream in=out.getInputStream();
        file = bao.toByteArray();
        
        
        //return new String(file) ;
        return new String(file,"UTF-8");
    }
    
    /**
     * @return the mongoClient
     */
    public MongoClient getMongoClient() {
        return mongoClient;
    }

    /**
     * @param mongoClient the mongoClient to set
     */
    public void setMongoClient(MongoClient mongoClient) {
        this.mongoClient = mongoClient;
    }
}
