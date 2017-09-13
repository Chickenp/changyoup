package dao.impl;

import java.util.List;

import model.Planlike;
import model.PlanlikeId;
import model.Planlike;
import model.PlanlikeId;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.PlanLikeDao;


public class PlanLikeDaoImpl extends HibernateDaoSupport implements PlanLikeDao{
 public Integer save(Planlike planlike){
        
        getHibernateTemplate().save(planlike);
        return 1;
    }
    public Planlike getLikeByUser(PlanlikeId planlikeid){
        @SuppressWarnings("unchecked")
        List<Planlike> planlikes = (List<Planlike>) getHibernateTemplate().find(
                "from Planlike as p where p.id.planid=? and p.id.userid=? ", planlikeid.getPlanid(),planlikeid.getUserid());
        Planlike liked = planlikes.size() > 0 ? planlikes.get(0) : new Planlike(new PlanlikeId(0,0),0);
        return liked;
    }
    public double getAvg(int planid){
        @SuppressWarnings("unchecked")
        List <Object> res=getHibernateTemplate().find("select avg(p.point) from Planlike as p where p.id.planid=?",planid);
        return res.get(0)!=null?(double)(res.get(0)):0.0;
       
    }
}
