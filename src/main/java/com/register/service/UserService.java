package com.register.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.register.dao.UserDao;
import com.register.model.User;

@Service
public class UserService {
	@Autowired
	public UserDao userDao;
	
	public int insert(User user) {
		int status = userDao.insertUser(user);
		return status;
	}
	
	public void update(User user) {
		userDao.updateUser(user);
	}
	
	public void delete(int userId) {
		userDao.deleteUser(userId);
	}
	
	public User get(int userId) {
		User user = userDao.getUser(userId);
		return user;
	}
	
	public List<User> getAll() {
		List<User> users = userDao.getUsers();
		return users;
	}
}
