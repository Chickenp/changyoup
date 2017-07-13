package action;

import java.util.ArrayList;
import java.util.List;

import model.Route;
import model.Routeinfo;
import service.AppService;
import service.RouteInfoService;
import service.RouteService;


public class GetProductAction extends BaseAction{
    private AppService appService;
    private static final long serialVersionUID = 1L;
    private RouteInfoService routeinfoService;
    private RouteService routeService;
    private int routeid;
    @Override
    public String execute() throws Exception {
        //String daily=appService.getHtmlById("596491ca0708df9ac8f47e4a");
        //String img=appService.getIMG();
        //request().setAttribute("IMG", daily);
        Routeinfo rf = routeinfoService.getRouteInfoById(routeid);
        int date = rf.getRoutedays();
        request().setAttribute("date",date);
        List<String> days=new ArrayList<String>();
        
        List<Route> routes = routeService.getRoutesById(routeid);
        List<String> location_1=new ArrayList<String>();
        List<String> location_2=new ArrayList<String>();
        for (int i=0; i<routes.size(); i++){
                location_1.add(routes.get(i).getLocation1());
                location_2.add(routes.get(i).getLocation2());
                System.out.println(routes.get(i).getRouteMongoid());
                days.add(appService.getHtmlById(routes.get(i).getRouteMongoid()));
        }
        
        request().setAttribute("document", days);
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
    /**
     * @return the serialversionuid
     */
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    /**
     * @return the routeinfoService
     */
    public RouteInfoService getRouteinfoService() {
        return routeinfoService;
    }
    /**
     * @param routeinfoService the routeinfoService to set
     */
    public void setRouteinfoService(RouteInfoService routeinfoService) {
        this.routeinfoService = routeinfoService;
    }
    /**
     * @return the routeService
     */
    public RouteService getRouteService() {
        return routeService;
    }
    /**
     * @param routeService the routeService to set
     */
    public void setRouteService(RouteService routeService) {
        this.routeService = routeService;
    }
    /**
     * @return the routeid
     */
    public int getRouteid() {
        return routeid;
    }
    /**
     * @param routeid the routeid to set
     */
    public void setRouteid(int routeid) {
        this.routeid = routeid;
    }
    
}
