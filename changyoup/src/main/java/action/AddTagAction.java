package action;

import service.RouteInfoService;
import service.RouteTagService;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import model.Tag;
import model.Routeinfo;
import model.Routetag;

public class AddTagAction extends BaseAction{
	private int tagid;
	private String tagname;
    private RouteTagService routetagService;
	
	public int getTagid() {
		return tagid;
	}

	public void setTagid(int tagid) {
		this.tagid = tagid;
	}

	public String getTagname() {
		return this.tagname;
	}

	public void setTagname(String tagname) {
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
	
	public String getAllTags(){
		int routeid = (Integer)session().getAttribute("rid"); 
		List<Tag> tags = routetagService.getTagsByRouteId(routeid);
		request().setAttribute("tags", tags);
		return SUCCESS;
	}
	
	public String delete(){
		int routeid = (Integer)session().getAttribute("rid");
		Routetag routetag = new Routetag();
	    routetag.setRouteid(routeid);
	    routetag.setTagid(tagid);
	    routetagService.deleteRoutetag(routetag);
		return SUCCESS;
	}
}