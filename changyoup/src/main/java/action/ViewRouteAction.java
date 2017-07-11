package action;

import java.io.InputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;

import model.Route;
import service.AppService;

public class ViewRouteAction extends BaseAction {

	public String getImg() throws Exception {
		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
        MongoClient client = (MongoClient) context.getBean("mongoClient");
        
        GridFS gridFS = new GridFS(client.getDB("chp"));
        
        GridFSDBFile out =gridFS.findOne( new BasicDBObject( "filename" , "setting") );
        
        InputStream is = out.getInputStream();
        
        byte[] bytes = IOUtils.toByteArray(is);

        String ecstring= java.util.Base64.getEncoder().encodeToString(bytes);

        System.out.println("DMN0");

        System.out.println(ecstring);

        return ecstring;
		
	}
}