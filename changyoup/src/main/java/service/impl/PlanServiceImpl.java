package service.impl;

import java.util.List;

import dao.PlanDao;
import dao.PlaninfoDao;
import model.Planinfo;
import service.PlanService;


public class PlanServiceImpl implements PlanService{

	private PlanDao planDao;
	private PlaninfoDao planinfoDao;
	
	public void setPlanDao(PlanDao planDao) {
		this.planDao = planDao;
	}
	
	public void setPlaninfoDao(PlaninfoDao planinfoDao) {
		this.planinfoDao = planinfoDao;
	}
	
	@Override
	public Integer addPlan(Planinfo planinfo, String plan) {
		planinfoDao.save(planinfo);
		int planid=planinfo.getPlanid();
		try {
			planDao.save(planid, plan);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return planid;
	}

	@Override
	public void updatePlan(int planid, String plan) {
		try {
			planDao.save(planid, plan);
		} catch (Exception e) {
			
		}	
	}

	@Override
	public void deletePlan(int planid) {
	}

	@Override
	public String getPlanbyId(int id){
		String plan="";
		try{
		plan=planDao.getPlanbyId(id);
		return plan;
		}
		catch(Exception e){
			return null;
		}
	}

	@Override
	public void updatePlaninfo(Planinfo planinfo) {
		planinfoDao.update(planinfo);
	}

	@Override
	public List<Planinfo> getPlanbyPublisher(int userid) {
		return planinfoDao.getPlaninfoByPublisher(userid);
	}

	@Override
	public List<Planinfo> getUnpassedPlan() {
		return planinfoDao.getUnpassedPlan();
	}

	@Override
	public List<Planinfo> getAllpassedPlan() {
		return planinfoDao.getAllpassedPlan();
	}

}
