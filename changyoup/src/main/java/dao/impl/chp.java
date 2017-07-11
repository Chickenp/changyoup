package dao.impl;  
  
import java.io.OutputStream;  
import java.util.List;  
  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;  
  
@Controller  
@RequestMapping(value = "/mongoImg")  
public class chp { 
    @Autowired  
    GridFsTemplate gridFsTemplate;  
      
    @RequestMapping(value = "/show")  
    public void show(HttpServletRequest req, HttpServletResponse resp){  
        try {  
        	 
        	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

            MongoClient client = (MongoClient) context.getBean("mongoClient");

            GridFS gridFS = new GridFS(client.getDB("mongoImg"));
            
            OutputStream out = resp.getOutputStream();  
            resp.setContentType("image/png");  
            
            List<GridFSDBFile> find = gridFS.find(new BasicDBObject("filename","pic2.png"));  
            GridFSDBFile gridFSDBFile = find.get(1);  
            gridFSDBFile.writeTo(out);  
            out.flush();  
            out.close();  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
          
    }
}  