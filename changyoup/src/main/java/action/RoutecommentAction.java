package action;

import service.AppService;
import model.Routecomment;

public class RoutecommentAction extends BaseAction{
    private AppService appService;
    private static final long serialVersionUID = 1L; 
    private String comment;
    private int routeid;

    /**
     * @return the comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment the comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

   
    @Override
    public String execute(){
        System.out.println("CommentAction");
        System.out.println(routeid);
        System.out.println(comment);
        int uid=(Integer)session().getAttribute("uid");
        if(session().getAttribute("uid")==null){return ERROR;}
        System.out.println(uid);
        Routecomment com=new Routecomment(uid,routeid,comment,0);
        System.out.println("CON");
        System.out.println(com);
        appService.saveRoutecomment(com);
        return SUCCESS;
    }

    /**
     * @return the appService
     */
   
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
}
