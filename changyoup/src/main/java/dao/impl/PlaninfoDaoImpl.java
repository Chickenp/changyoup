package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.PlaninfoDao;
import model.Planinfo;

public class PlaninfoDaoImpl extends HibernateDaoSupport implements PlaninfoDao{
	public Integer save(Planinfo planinfo) {
		return (Integer) getHibernateTemplate().save(planinfo);
	}

	public void delete(Planinfo planinfo) {
		getHibernateTemplate().delete(planinfo);
	}

	public void update(Planinfo planinfo) {
		getHibernateTemplate().merge(planinfo);
	}
	
	public Planinfo getPlaninfoById(int id) {
		@SuppressWarnings("unchecked")
		List<Planinfo> planinfos = (List<Planinfo>) getHibernateTemplate().find(
				"from Planinfo as p where p.planid=?", id);
		Planinfo planinfo = planinfos.size() > 0 ? planinfos.get(0) : null;
		return planinfo;
	}

	public List<Planinfo> getAllPlaninfos() {
		@SuppressWarnings("unchecked")
		List<Planinfo> planinfos = (List<Planinfo>) getHibernateTemplate()
				.find("from Planinfo");
		return planinfos;
	}

	@Override
	public List<Planinfo> getPlaninfoByPublisher(int userid) {
		@SuppressWarnings("unchecked")
		List<Planinfo> planinfos = (List<Planinfo>) getHibernateTemplate().find(
				"from Planinfo as p where p.publisher=?", userid);
		return planinfos;
	}

	@Override
	public List<Planinfo> getUnpassedPlan() {
		List<Planinfo> planinfos = (List<Planinfo>) getHibernateTemplate().find(
		"from Planinfo as p where p.pass=0");
		return planinfos;
	}

	@Override
	public List<Planinfo> getAllpassedPlan() {
		List<Planinfo> planinfos = (List<Planinfo>) getHibernateTemplate().find(
		"from Planinfo as p where p.pass=1");
		return planinfos;
	}


}
