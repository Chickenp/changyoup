package service;

import java.util.List;





import model.User;

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
	
}
