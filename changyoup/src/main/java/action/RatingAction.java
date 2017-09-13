package action;

import model.Planlike;
import model.PlanlikeId;
import model.Routelike;
import model.RoutelikeId;
import service.PlanLikeService;
import service.RouteLikeService;

public class RatingAction extends BaseAction{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private int point;
    private int routeid;
    private int planid;
    private int userid;
    private PlanLikeService planlikeService;
    private RouteLikeService routelikeService;
    /**
     * @return the point
     */
    public int getPoint() {
        return point;
    }
    /**
     * @param point the point to set
     */
    public void setPoint(int point) {
        this.point = point;
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
    /**
     * @return the planid
     */
    public int getPlanid() {
        return planid;
    }
    /**
     * @param planid the planid to set
     */
    public void setPlanid(int planid) {
        this.planid = planid;
    }
    /**
     * @return the userid
     */
    public int getUserid() {
        return userid;
    }
    /**
     * @param userid the userid to set
     */
    public void setUserid(int userid) {
        this.userid = userid;
    }
    /**
     * @return the planlikeservice
     */
   
    public String RouteRating() throws Exception{
        int uid=(Integer)session().getAttribute("uid");
        if(session().getAttribute("uid")==null){return ERROR;}
        RoutelikeId routelikeid=new RoutelikeId(routeid,uid);
        Routelike routelike=new Routelike(routelikeid,point);
        routelikeService.save(routelike);
        return SUCCESS;
    }
    public String PlanRating() throws Exception{
        int uid=(Integer)session().getAttribute("uid");
        if(session().getAttribute("uid")==null){return ERROR;}
        PlanlikeId planlikeid=new PlanlikeId(planid,uid);
        Planlike planlike=new Planlike(planlikeid,point);
        planlikeService.save(planlike);
        return SUCCESS;
    }
    /**
     * @return the planlikeService
     */
    public PlanLikeService getPlanlikeService() {
        return planlikeService;
    }
    /**
     * @param planlikeService the planlikeService to set
     */
    public void setPlanlikeService(PlanLikeService planlikeService) {
        this.planlikeService = planlikeService;
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
