package action;

import java.util.List;

import org.springframework.aop.ThrowsAdvice;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import model.Planinfo;
import service.PlanService;
import service.PlaninfoService;

public class PlanAction extends BaseAction{
	
	private int planid;
	private String plan;
	private PlanService planService;
	private int publisher;
	private String title;
	private PlaninfoService planinfoService;
	
	public void setPlanService(PlanService planService) {
		this.planService = planService;
	}
	
	public void setPlaninfoService(PlaninfoService planinfoService) {
		this.planinfoService = planinfoService;
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
		Planinfo planinfo=planinfoService.getPlaninfobyId(planid);
		request().setAttribute("title", planinfo.getTitle());
		plan=planService.getPlanbyId(planid);
		session().setAttribute("planid", planid);
		request().setAttribute("cplan", plan);
		return SUCCESS;
	}

	public String add() throws Exception {
		System.out.println(title);
		System.out.println(publisher);
		
		Planinfo planinfo=new Planinfo(publisher, title);
		planinfoService.addPlaninfo(planinfo);
		planService.addPlan(planinfo, plan);
		return null;
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
	
	public String  ExaminePlans() throws Exception{
		Planinfo p = planinfoService.getPlaninfobyId(planid);
		int i = 1;
		p.setPass(i);
		planinfoService.updatePlaninfo(p);
		return SUCCESS;
		
	}
	
}
