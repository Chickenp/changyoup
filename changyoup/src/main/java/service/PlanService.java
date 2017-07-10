package service;

public interface PlanService {
	public Integer addPlan(int planid,String plan);
	
	public void updatePlan(int planid,String plan);
	
	public void deletePlan(int planid);
	
	public String getPlanbyId(int id);
}
