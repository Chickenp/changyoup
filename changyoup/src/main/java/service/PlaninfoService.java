package service;

import java.util.List;

import model.Planinfo;

public interface PlaninfoService {
	public Integer addPlaninfo(Planinfo planinfo);
	
	public void updatePlaninfo(Planinfo planinfo);
	
	public void deletePlaninfo(Planinfo planinfo);
	
	public Planinfo getPlaninfobyId(int id);
	
	public List<Planinfo> getPlanbyPublisher(int userid);
	
	public List<Planinfo> getUnpassedPlan();
	
	public List<Planinfo> getAllpassedPlan();
}
