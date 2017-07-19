package service;

import java.util.List;

import model.User;
import model.Comment;

/**
 * 
 * @version 1.0
 * 
 */
public interface AppService {

    /**
     * user
     * 
     */
    public Integer addUser(User user);

    public void deleteUser(User user);

    public void updateUser(User user);

    public User getUserById(int id);

    public List<User> getAllUsers();

    public String getIMG() throws Exception;

    public String getHtmlById(String id) throws Exception;

    public Integer saveComment(Comment comment);

    public void deleteComment(Comment comment);

    public void updateComment(Comment comment);

    public Comment getCommentById(int id);

    public List<Comment> getAllComments();

    public List<Comment> getCommentByPlan(int planid);

}
