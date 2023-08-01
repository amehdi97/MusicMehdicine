package com.capstone.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.capstone.spring.dao.UserDao;
import com.capstone.spring.model.User;

@Component
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	//create
	@Transactional
	public void createUser(User user) {
		userDao.createUser(user);
	}
	
	//get all users
	public List<User> getUsers(){
		return userDao.getUsers();
	}
	
	//delete the single product
	@Transactional
	public void deleteUser(int uid) {
		userDao.deleteUser(uid);
	}
	
	//get single user
	public User getUser(int uid) {
		return userDao.getUser(uid);
	}

	public User getUserByEmail(String email) {
		return userDao.getUserByEmail(email);
	}


}
