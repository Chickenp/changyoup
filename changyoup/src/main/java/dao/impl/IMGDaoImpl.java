package dao.impl;

import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;

public class IMGDaoImpl implements dao.IMGDao {
    private MongoClient mongoClient;
       public String getIMG() throws Exception {
//           ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//           MongoClient client = (MongoClient) context.getBean("mongoClient");
           GridFS gridFS = new GridFS(mongoClient.getDB("chp"));
           GridFSDBFile out =gridFS.findOne( new BasicDBObject( "filename" , "setting.png") );
           InputStream is = out.getInputStream();
           byte[] bytes = IOUtils.toByteArray(is);
           String ecstring= java.util.Base64.getEncoder().encodeToString(bytes);
//           System.out.println("DMN0");
//           System.out.println(ecstring);
           return ecstring;
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
