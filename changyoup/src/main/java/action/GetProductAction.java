package action;

import java.util.List;

import model.Route;
import model.Routeinfo;
import model.User;
import service.AppService;
import service.LoginService;
import service.RouteInfoService;
import dao.impl.RouteInfoDaoImpl;



public class GetProductAction extends BaseAction{
    private AppService appService;
    private RouteInfoService routeinfoService;
    private static final long serialVersionUID = 1L;
    private int routeid;
    
    
    public int getRouteid() {  
        return routeid;  
    }  
  
    public void setRouteid(int routeid) {  
        this.routeid = routeid;  
    }  
    
    @Override
    public String execute() throws Exception {
        String img=appService.getIMG();
        request().setAttribute("IMG", img);
        
        
        System.out.println(routeid);
        Routeinfo rf = routeinfoService.getRouteInfoById(routeid);
        int date = rf.getRoutedays();
        request().setAttribute("date",date);
        
        
        
        return SUCCESS;
    }
    /**
     * @return the appService
     */
    public AppService getAppService() {
        return appService;
    }
    /**
     * @param appService the appService to set
     */
    public void setAppService(AppService appService) {
        this.appService = appService;
    }
    
    public RouteInfoService getRouteinfoservice() {
        return routeinfoService;
    }


    public void setRouteinfoService(RouteInfoService routeinfoService) {
        this.routeinfoService = routeinfoService;
    }
    
    
    /**
     * @return the serialversionuid
     */
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    
}
