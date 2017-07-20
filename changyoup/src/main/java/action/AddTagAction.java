package action;

import service.RouteInfoService;
import service.RouteTagService;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import model.Tag;
import model.Routeinfo;
import model.Routetag;

public class AddTagAction extends BaseAction{
	private String tagname;
    private RouteTagService routetagService;
	
	public String getTagname() {
		return this.tagname;
	}

	public void setTagnem(String tagname) {
		this.tagname = tagname;
	}
	
	public void setRoutetagService(RouteTagService routetagService) {
        this.routetagService = routetagService;
    }

    public RouteTagService getRoutetagService() {
        return routetagService;
    }
	
	public String addTag() throws Exception{
		Tag tag = routetagService.getTagByName(tagname);
		if(tag != null){
			int tagid = tag.getTagid();
			int routeid = (Integer)session().getAttribute("rid");
		    Routetag routetag = new Routetag();
		    routetag.setRouteid(routeid);
		    routetag.setTagid(tagid);
		    routetagService.addRoutetag(routetag);
		}
		else{
			Tag newtag = new Tag();
			newtag.setTagname(tagname);
			routetagService.addTag(newtag);
			int newtagid = newtag.getTagid();
			int routeid = (Integer)session().getAttribute("rid");
			Routetag routetag = new Routetag();
		    routetag.setRouteid(routeid);
		    routetag.setTagid(newtagid);
		    routetagService.addRoutetag(routetag);
		}
		
		
		
		return SUCCESS;
	}
	
}