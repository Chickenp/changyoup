package service;

import java.util.List;

import model.Planinfo;

public interface PlanService {
	public Integer addPlan(Planinfo planinfo,String plan);
	
	public void updatePlan(int planid,String plan);
	
	public void deletePlan(Planinfo planinfo);
	
	public String getPlanbyId(int id);
	

}
