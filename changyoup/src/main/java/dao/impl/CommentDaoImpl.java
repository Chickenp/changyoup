package dao.impl;

import java.util.List;

import model.Comment;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.CommentDao;

public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao {

    public Integer save(Comment comment) {
            System.out.println(comment);
            return (Integer) getHibernateTemplate().save(comment);
    }

    public void delete(Comment comment) {
            getHibernateTemplate().delete(comment);
    }

    public void update(Comment comment) {
            getHibernateTemplate().merge(comment);
    }

    public Comment getCommentById(int id) {
            @SuppressWarnings("unchecked")
            List<Comment> comments = (List<Comment>) getHibernateTemplate().find(
                            "from Comment as u where u.commentid=?", id);
            Comment comment = comments.size() > 0 ? comments.get(0) : null;
            return comment;
    }

    public List<Comment> getAllComments() {
            @SuppressWarnings("unchecked")
            List<Comment> comments = (List<Comment>) getHibernateTemplate()
                            .find("from Comment");
            return comments;
    }
    
    public List<Comment> getCommentByRoute(int routeid){
        @SuppressWarnings("unchecked")        
        List<Comment> comments=(List<Comment>)getHibernateTemplate().find("from Comment as c where c.planid=?",routeid);
        
        return comments;
    }
}
