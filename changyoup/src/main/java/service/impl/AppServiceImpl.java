package service.impl;

import java.util.List;

import model.Comment;
import model.Routecomment;
import model.User;
import service.AppService;
import dao.HtmlDao;
import dao.UserDao;
import dao.IMGDao;
import dao.CommentDao;
import dao.RoutecommentDao;
public class AppServiceImpl implements AppService {

    private UserDao userDao;
    private IMGDao imgDao;
    private HtmlDao HtmlDao;
    private CommentDao CommentDao;
    private RoutecommentDao RoutecommentDao;
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    /**
         * @return the imgDao
         */
    public IMGDao getImgDao() {
        return imgDao;
    }

    /**
     * @param imgDao the imgDao to set
     */
    public void setImgDao(IMGDao imgDao) {
        this.imgDao = imgDao;
    }

    /**
     * user
     * 
     */
    public Integer addUser(User user) {
        return userDao.save(user);
    }

    public void deleteUser(User user) {
        userDao.delete(user);
    }

    public void updateUser(User user) {
        userDao.update(user);
    }

    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    public String getIMG() throws Exception {
        return imgDao.getIMG();
    }

    public String getHtmlById(String id) throws Exception {
        return HtmlDao.getHtmlById(id);
    }

    public List<Comment> getCommentByPlan(int planid) {
        return CommentDao.getCommentByPlan(planid);
    }

    public Integer saveComment(Comment comment) {
        System.out.println("SEVICE");
        return CommentDao.save(comment);
    };

    public void deleteComment(Comment comment) {
        CommentDao.delete(comment);
    };

    public void updateComment(Comment comment) {
        CommentDao.update(comment);
    };

    public Comment getCommentById(int id) {
        return CommentDao.getCommentById(id);
    };

    public List<Comment> getAllComments() {
        return CommentDao.getAllComments();
    };
    
    
    public List<Routecomment> getCommentByRoute(int routeid) {
        return RoutecommentDao.getCommentByRoute(routeid);
    }

    public Integer saveRoutecomment(Routecomment comment) {
        System.out.println("SEVICE");
        return RoutecommentDao.save(comment);
    };

    public void deleteRoutecomment(Routecomment comment) {
        RoutecommentDao.delete(comment);
    };

    public void updateRoutecomment(Routecomment comment) {
        RoutecommentDao.update(comment);
    };

    public Routecomment getRoutecommentById(int id) {
        return RoutecommentDao.getRoutecommentById(id);
    };

    public List<Routecomment> getAllRoutecomments() {
        return RoutecommentDao.getAllRoutecomments();
    };

    /**
     * @return the htmlDao
     */
    public HtmlDao getHtmlDao() {
        return HtmlDao;
    }

    /**
     * @param htmlDao the htmlDao to set
     */
    public void setHtmlDao(HtmlDao htmlDao) {
        HtmlDao = htmlDao;
    }

    /**
     * @return the userDao
     */
    public UserDao getUserDao() {
        return userDao;
    }

    /**
     * @return the commentDao
     */
    public CommentDao getCommentDao() {
        return CommentDao;
    }

    /**
     * @param commentDao the commentDao to set
     */
    public void setCommentDao(CommentDao commentDao) {
        CommentDao = commentDao;
    }

    /**
     * @return the routecommentDao
     */
    public RoutecommentDao getRoutecommentDao() {
        return RoutecommentDao;
    }

    /**
     * @param routecommentDao the routecommentDao to set
     */
    public void setRoutecommentDao(RoutecommentDao routecommentDao) {
        RoutecommentDao = routecommentDao;
    }

    
   
  

}
