package action;

import service.AppService;


public class GetProductAction extends BaseAction{
    private AppService appService;
    private static final long serialVersionUID = 1L;
    @Override
    public String execute() throws Exception {
        String img=appService.getIMG();
        request().setAttribute("IMG", img);
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
    
}
