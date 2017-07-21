package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import model.Routecomment;
import dao.RoutecommentDao;

public class RoutecommentDaoImpl extends HibernateDaoSupport implements RoutecommentDao {
    public Integer save(Routecomment comment) {
        return (Integer) getHibernateTemplate().save(comment);
    }

    public void delete(Routecomment comment) {
        getHibernateTemplate().delete(comment);
    }

    public void update(Routecomment comment) {
        getHibernateTemplate().merge(comment);
    }

    public Routecomment getRoutecommentById(int id) {
        @SuppressWarnings("unchecked")
        List<Routecomment> comments = (List<Routecomment>) getHibernateTemplate().find("from Routecomment as u where u.commentid=?", id);
        Routecomment comment = comments.size() > 0 ? comments.get(0) : null;
        return comment;
    }

    public List<Routecomment> getAllRoutecomments() {
        @SuppressWarnings("unchecked")
        List<Routecomment> comments = (List<Routecomment>) getHibernateTemplate().find("from Routecomment");
        return comments;
    }

    public List<Routecomment> getCommentByRoute(int routeid) {

        @SuppressWarnings("unchecked")
        List<Routecomment> comments = (List<Routecomment>) getHibernateTemplate().find("from Routecomment as c where c.routeid=?", routeid);

        return comments;
    }
}
