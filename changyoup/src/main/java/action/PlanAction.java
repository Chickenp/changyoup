package action;

import java.util.List;

import org.springframework.aop.ThrowsAdvice;

import model.Planinfo;
import service.PlanService;

public class PlanAction extends BaseAction{
	
	private int planid;
	private String plan;
	private PlanService planService;
	private int publisher;
	private String title;
	
	public void setPlanService(PlanService planService) {
		this.planService = planService;
	}
	
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	
	public int getPlanid() {
		return planid;
	}
	
	public void setPlan(String plan) {
		this.plan = plan;
	}
	
	public String getPlan() {
		return plan;
	}
	
	public void setPublisher(int publisher) {
		this.publisher = publisher;
	}
	public int getPublisher() {
		return publisher;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle() {
		return title;
	}
	
	
	public String execute() throws Exception{
		
		
		return SUCCESS;
	}
	
	public String getPlanbyId() throws Exception{
		plan=planService.getPlanbyId(planid);
		request().setAttribute("cplan", plan);
		return SUCCESS;
	}

	public String add() throws Exception {
		Planinfo planinfo=new Planinfo();
		planinfo.setPublisher(publisher);
		planinfo.setTitle(title);
		planService.addPlan(planinfo, plan);
		return SUCCESS;
	}
	
	public String update() throws Exception{
		planService.updatePlan(planid, plan);
		return SUCCESS;
	}
	
	public String updateinfo() throws Exception{
		
		return SUCCESS;
	}
	
	public String delete() throws Exception{
		Planinfo planinfo=new Planinfo();
		planinfo.setPlanid(planid);
		planService.deletePlan(planinfo);
		
		return SUCCESS;
	}
	
	public String getPlanbyPublisher() throws Exception{
		List<Planinfo> passedplans=planService.getPlanbyPublisher(publisher);
		return SUCCESS;
		
	}
	
	public String getAllpassedPlan() throws Exception{
		List<Planinfo> passedplans=planService.getAllpassedPlan();
		request().setAttribute("allplans", passedplans);
		return SUCCESS;
	}
	
	public String getUnpassedPlan() throws Exception{
		List<Planinfo> unpassedplans=planService.getUnpassedPlan();
		request().setAttribute("unpass", unpassedplans);
		return SUCCESS;
	}
	
}
