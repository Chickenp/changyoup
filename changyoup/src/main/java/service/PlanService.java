package service;

import java.util.List;

import model.Planinfo;

public interface PlanService {
	public Integer addPlan(Planinfo planinfo,String plan);
	
	public void updatePlan(int planid,String plan);
	
	public void updatePlaninfo(Planinfo planinfo);
	
	public void deletePlan(int planid);
	
	public String getPlanbyId(int id);
	
	public List<Planinfo> getPlanbyPublisher(int userid);
	
	public List<Planinfo> getUnpassedPlan();
	
	public List<Planinfo> getAllpassedPlan();
}
