package service.impl;

import java.util.List;

import dao.PlaninfoDao;
import model.Planinfo;
import service.PlaninfoService;

public class PlaninfoServiceImpl  implements PlaninfoService{
	private PlaninfoDao planinfoDao;
	
	public void setPlaninfoDao(PlaninfoDao planinfoDao) {
		this.planinfoDao = planinfoDao;
	}

	@Override
	public Integer addPlaninfo(Planinfo planinfo) {
		return planinfoDao.save(planinfo);
	}

	@Override
	public void updatePlaninfo(Planinfo planinfo) {	
		planinfoDao.update(planinfo);
	}

	@Override
	public void deletePlaninfo(Planinfo planinfo) {
		planinfoDao.delete(planinfo);
	}

	@Override
	public Planinfo getPlaninfobyId(int id) {
		return planinfoDao.getPlaninfoById(id);
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
