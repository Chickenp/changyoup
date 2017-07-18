package dao.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import model.User;
import service.LoginService;

public class LoginDaoImpl extends HibernateDaoSupport implements dao.LoginDao {
    @Override
    public int login(String username, String password) {
        List<User> u=this.getHibernateTemplate().find("from User where username=? and password=?",username,password);
        int flag = 0;
        User user=(User)u.get(0);
        int role = user.getRole();
        if(u.size()>0){
            flag += 1;
            if(role == 0){
        	    flag += 1;
            }
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("uid",user.getUserid());
            session.setAttribute("role",user.getRole());
        }
        
        
        return flag;
    }

}