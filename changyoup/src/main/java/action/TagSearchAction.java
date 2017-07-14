package action;

import java.util.ArrayList;
import java.util.List;

import model.Route;
import model.Routeinfo;
import service.RouteTagService;


public class TagSearchAction extends BaseAction{
    private int tagid;
    private RouteTagService routetagService;
    private static final long serialVersionUID = 1L;
    
    public int getTagid() {  
        return tagid;  
    }  
  
    public void setTagid(int tagid) {  
        this.tagid = tagid;  
    }  
    
    @Override
    public String execute() throws Exception {
    	List<Routeinfo> routeinfos = routetagService.getRoutesById(tagid);
    	
    	request().setAttribute("routeinfos",routeinfos);
    	System.out.println(tagid);
    	return SUCCESS;
    }
    
    


    public void setRoutetagService(RouteTagService routetagService) {
        this.routetagService = routetagService;
    }

    /**
     * @return the routeinfoService
     */
    public RouteTagService getRoutetagService() {
        return routetagService;
    }

    /**
     * @return the serialversionuid
     */
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    
}