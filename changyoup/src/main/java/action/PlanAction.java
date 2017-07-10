package action;

import org.springframework.aop.ThrowsAdvice;

import service.PlanService;

public class PlanAction extends BaseAction{
	
	private int planid;
	private String plan;
	private PlanService planService;
	
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
	
	
	public String execute() throws Exception{
		
		
		return SUCCESS;
	}
	
	public String getPlanbyId() throws Exception{
		plan=planService.getPlanbyId(planid);
		request().setAttribute("cplan", plan);
		return SUCCESS;
	}

	public String add() throws Exception {
		planService.addPlan(planid, plan);
		return SUCCESS;
	}
	
	public String update() throws Exception{
		planService.updatePlan(planid, plan);
		return SUCCESS;
	}
	
	public String delete() throws Exception{
		planService.deletePlan(planid);
		
		return SUCCESS;
	}
	
	
}
