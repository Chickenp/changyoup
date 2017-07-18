package action;

import java.util.List;

import model.Planinfo;
import service.PlaninfoService;

public class ExamineplanAction extends BaseAction{
	private int planid;
	private int publisher;
	private String title;
	private PlaninfoService planinfoService;
	
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public int getPublisher() {
		return publisher;
	}
	public void setPublisher(int publisher) {
		this.publisher = publisher;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setPlaninfoService(PlaninfoService planinfoService) {
		this.planinfoService = planinfoService;
	}
	
	public String getPlanbyPublisher() throws Exception{
		List<Planinfo> passedplans=planinfoService.getPlanbyPublisher(publisher);
		return SUCCESS;
		
	}
	
	public String getAllpassedPlan() throws Exception{
		List<Planinfo> passedplans=planinfoService.getAllpassedPlan();
		request().setAttribute("allplans", passedplans);
		return SUCCESS;
	}
	
	public String getUnpassedPlan() throws Exception{
		List<Planinfo> unpassedplans=planinfoService.getUnpassedPlan();
		request().setAttribute("unpass", unpassedplans);
		return SUCCESS;
	}
	
}
