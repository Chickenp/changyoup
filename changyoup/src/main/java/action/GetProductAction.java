package action;

import java.util.ArrayList;
import java.util.List;

import model.Route;
import model.Routeinfo;
import model.User;
import service.AppService;
import service.LoginService;
import service.RouteInfoService;
import service.RouteService;
import dao.impl.RouteInfoDaoImpl;



public class GetProductAction extends BaseAction{
    private AppService appService;
    private RouteInfoService routeinfoService;
    private RouteService routeService;
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
        
        List<Route> routes = routeService.getRoutesById(routeid);
        List<String> location_1=new ArrayList<String>();
        List<String> location_2=new ArrayList<String>();
        for (int i=0; i<routes.size(); i++){
        	System.out.println(routes.get(i).getLocation1());
        	location_1.add(routes.get(i).getLocation1());
        	location_2.add(routes.get(i).getLocation2());
        }
        System.out.println(location_1);
        System.out.println(location_2);
        
        request().setAttribute("location_1",location_1);
        request().setAttribute("location_2",location_2);
        
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
    
    public RouteService getRouteservice() {
        return routeService;
    }


    public void setRouteService(RouteService routeService) {
        this.routeService = routeService;
    }
    
    
    /**
     * @return the serialversionuid
     */
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    
}
