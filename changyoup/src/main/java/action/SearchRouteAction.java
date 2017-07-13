package action;

import java.util.ArrayList;
import java.util.List;

import model.Route;
import model.Routeinfo;
import service.RouteInfoService;


public class SearchRouteAction extends BaseAction{
    private String searchword;
    private RouteInfoService routeinfoService;
    private static final long serialVersionUID = 1L;
    
    public String getSearchword() {  
        return searchword;  
    }  
  
    public void setSearchword(String searchword) {  
        this.searchword = searchword;  
    }  
    
    @Override
    public String execute() throws Exception {
    	List<Routeinfo> routeinfos = routeinfoService.getRouteInfoBySearch(searchword);
    	
    	request().setAttribute("routeinfos",routeinfos);
    	System.out.println(searchword);
    	return SUCCESS;
    }
    
    


    public void setRouteinfoService(RouteInfoService routeinfoService) {
        this.routeinfoService = routeinfoService;
    }

    /**
     * @return the routeinfoService
     */
    public RouteInfoService getRouteinfoService() {
        return routeinfoService;
    }

    /**
     * @return the serialversionuid
     */
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    
}
