package action;

import java.util.ArrayList;
import java.util.List;

import model.Routecomment;
import model.Route;
import model.Routeinfo;
import model.RoutelikeId;
import model.Tag;
import service.AppService;
import service.RouteInfoService;
import service.RouteLikeService;
import service.RouteService;
import service.RouteTagService;


public class GetProductAction extends BaseAction{
    private AppService appService;
    private static final long serialVersionUID = 1L;
    private RouteInfoService routeinfoService;
    private RouteService routeService;
    private RouteTagService routetagService;
    private RouteLikeService routelikeService;
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
        double avg=routelikeService.getAvg(routeid);
        int yourpoint=session().getAttribute("uid")==null?0:routelikeService.getLikeByUser(new RoutelikeId(routeid,(Integer)session().getAttribute("uid"))).getPoint();
        for (int i=0; i<routes.size(); i++){
        		Route route=routes.get(i);
        		//设定的时候经纬度有点问题，反一下
                location_1.add(((route.getLocation1()!=null)&&!(route.getLocation1().equals("")))?(route.getLocation1()):"0");
                location_2.add(((route.getLocation2()!=null)&&!(route.getLocation2().equals("")))?(route.getLocation2()):"0");
                days.add(routeService.getRouteContentbyId(route.getRouteMongoid()));
        }
        
        List<Tag> tags = routetagService.getTagsByRouteId(routeid);
        List<String> tag_name=new ArrayList<String>();
        List<Integer> tag_id=new ArrayList<Integer>();
        for (int i=0; i<tags.size(); i++){
        	tag_name.add(tags.get(i).getTagname());
        	tag_id.add(tags.get(i).getTagid());
        }
        List<Routecomment> comments=appService.getCommentByRoute(routeid);
        request().setAttribute("comments",comments);
        request().setAttribute("document", days);
        request().setAttribute("location_1",location_1);
        request().setAttribute("location_2",location_2);
        request().setAttribute("tagnames",tag_name );
        request().setAttribute("tagids",tag_id );
        request().setAttribute("point", avg);
        request().setAttribute("Yourpoint", yourpoint);
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
    
    public void setRoutetagService(RouteTagService routetagService) {
        this.routetagService = routetagService;
    }

    /**
     * @return the routeinfoService
     */
    public RouteTagService getRoutetagService() {
        return routetagService;
    }
    
    public int getRouteid() {
        return routeid;
    }
    /**
     * @param routeid the routeid to set
     */
    public void setRouteid(int routeid) {
        this.routeid = routeid;
    }
    /**
     * @return the routelikeService
     */
    public RouteLikeService getRoutelikeService() {
        return routelikeService;
    }
    /**
     * @param routelikeService the routelikeService to set
     */
    public void setRoutelikeService(RouteLikeService routelikeService) {
        this.routelikeService = routelikeService;
    }
    
}
