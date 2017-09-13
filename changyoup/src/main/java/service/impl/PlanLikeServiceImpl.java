package service.impl;

import java.util.ArrayList;
import java.util.List;

import model.Planlike;
import model.PlanlikeId;
import dao.PlanLikeDao;
import service.PlanLikeService;

public class PlanLikeServiceImpl implements PlanLikeService {
	
	private PlanLikeDao planlikeDao;
	
	public void setPlanlikeDao(PlanLikeDao planlikeDao) {
		this.planlikeDao = planlikeDao;
	}

	public PlanLikeDao getPlanlikeDao(){
		return planlikeDao;
	}
	 public Integer save(Planlike planlike){
	        planlikeDao.save(planlike);
	        System.out.println("DMN");
	        return 1;
	    }

	    public Planlike getLikeByUser(PlanlikeId planlikeid){
	        
	        return  planlikeDao.getLikeByUser(planlikeid);
	    }

	    public double getAvg(int planid){
	        return planlikeDao.getAvg(planid);
	    }
}