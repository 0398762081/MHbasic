package vn.molu.service.impl;

import vn.molu.dao.IUserDAO;
import vn.molu.dao.impl.UserDAO;
import vn.molu.module.UserModel;
import vn.molu.service.IUserService;

public class UserService implements IUserService {

	private IUserDAO userDAO;

	public UserService() {
		userDAO = new UserDAO();
	}
	
	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
	}
	
}
