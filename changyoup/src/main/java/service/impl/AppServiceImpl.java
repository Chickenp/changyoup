package service.impl;

import java.util.List;



import model.User;
import service.AppService;
import dao.UserDao;
import dao.IMGDao;

public class AppServiceImpl implements AppService {


	private UserDao userDao;
	private IMGDao imgDao;

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
	
	public String getIMG() throws Exception{
	    return imgDao.getIMG();
	}


    
	

}
