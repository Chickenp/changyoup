package service.impl;

import dao.PlanDao;
import service.PlanService;


public class PlanServiceImpl implements PlanService{

	private PlanDao planDao;
	
	public void setPlanDao(PlanDao planDao) {
		this.planDao = planDao;
	}
	@Override
	public Integer addPlan(int planid, String plan) {
		// TODO Auto-generated method stub
		return null;
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
		// TODO Auto-generated method stub
		
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
