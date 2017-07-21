package dao;

import java.util.List;


import model.Routecomment;

public interface RoutecommentDao {
    public Integer save(Routecomment comment);

    public void delete(Routecomment comment);

    public void update(Routecomment comment);

    public Routecomment getRoutecommentById(int id);

    public List<Routecomment> getAllRoutecomments();

    public List<Routecomment> getCommentByRoute(int routeid);
}
