package action;

import service.AppService;
import model.Comment;

public class CommentAction extends BaseAction{
    private AppService appService;
    private static final long serialVersionUID = 1L; 
    private String comment;
    private int planid;

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
        System.out.println(planid);
        System.out.println(comment);
        int uid=(Integer)session().getAttribute("uid");
        if(session().getAttribute("uid")==null){return ERROR;}
        System.out.println(uid);
        Comment com=new Comment(uid,planid,comment,0);
        System.out.println("CON");
        System.out.println(com);
        appService.saveComment(com);
        return SUCCESS;
    }

    /**
     * @return the appService
     */
   
   
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
}
