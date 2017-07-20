package service.impl;

import java.util.ArrayList;
import java.util.List;

import dao.RouteInfoDao;
import dao.RouteTagDao;
import dao.TagDao;
import dao.UserInfoDao;
import dao.impl.RouteInfoDaoImpl;
import dao.impl.RouteTagDaoImpl;
import dao.impl.TagDaoImpl;
import model.Routeinfo;
import model.Routetag;
import model.Tag;
import service.RouteTagService;

public class RouteTagServiceImpl implements RouteTagService {

	private RouteTagDao routetagDao;
	private RouteInfoDao routeinfoDao;
	private TagDao tagDao;
	
	public void setRouteTagdao(RouteTagDaoImpl routetagDao) {
        this.routetagDao = routetagDao;
    }
	
	public void setRouteInfodao(RouteInfoDaoImpl routeinfoDao) {
        this.routeinfoDao = routeinfoDao;
    }
	
	public void setTagDao(TagDaoImpl tagDao){
		this.tagDao = tagDao;
	}
	
	@Override
    public List<Routeinfo> getRoutesById(int id){
    	List<Routetag> routetags = routetagDao.getRoutetagsById(id);
    	List<Routeinfo> routeinfos = new ArrayList<Routeinfo>(routetags.size());
    	for(int i = 0; i<routetags.size(); i++){
    		int j = routetags.get(i).getRouteid();
    		Routeinfo r = routeinfoDao.getRouteInfoById(j);
    		routeinfos.add(r);
    	}
        return routeinfos;
    }

    public List<Tag> getTagsById(int id){
    	List<Routetag> routetags = routetagDao.getRoutetagsByRouteId(id);
    	List<Tag> tags = new ArrayList<Tag>(routetags.size());
    	for(int i = 0; i<routetags.size(); i++){
    		int j = routetags.get(i).getTagid();
    		Tag tag = tagDao.getTagById(j);
    		tags.add(tag);
    	}
    	return tags;
    }
    
    public Tag getTagByName(String name){
    	Tag tag = tagDao.getTagByName(name);
    	return tag;
    }
    
    public Integer addRoutetag(Routetag routetag) {
        return routetagDao.save(routetag);
    }
    
    public Integer addTag(Tag tag){
    	return tagDao.save(tag);
    }
}