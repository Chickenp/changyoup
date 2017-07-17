package service.impl;

import java.util.List;

import dao.PlanDao;
import dao.PlaninfoDao;
import model.Planinfo;
import service.PlanService;


public class PlanServiceImpl implements PlanService{

	private PlanDao planDao;
	
	public void setPlanDao(PlanDao planDao) {
		this.planDao = planDao;
	}
	
	@Override
	public Integer addPlan(Planinfo planinfo, String plan) {
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
	public void deletePlan(Planinfo planinfo) {
		int planid=planinfo.getPlanid();
		try {
			planDao.delete(planid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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




}
