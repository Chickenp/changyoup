package dao;

import java.util.List;

import model.Planinfo;

public interface PlaninfoDao {
	public Integer save(Planinfo planinfo);

	public void delete(Planinfo planinfo);

	public void update(Planinfo planinfo);

	public Planinfo getPlaninfoById(int id);

	public List<Planinfo> getAllPlaninfos();
	
	public List<Planinfo> getPlaninfoByPublisher(int userid);
	
	public List<Planinfo> getUnpassedPlan();
	
	public List<Planinfo> getAllpassedPlan();
}
