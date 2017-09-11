package service.impl;

import java.util.ArrayList;
import java.util.List;

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
}