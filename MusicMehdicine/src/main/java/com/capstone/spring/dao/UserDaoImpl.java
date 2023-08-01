package com.capstone.spring.dao;

import java.util.List;
import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.capstone.spring.model.User;

@Component
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createUser(User user) {
		this.hibernateTemplate.saveOrUpdate(user);
	}
	
	//get all users
	public List<User> getUsers(){
		List<User> users= this.hibernateTemplate.loadAll(User.class);
		return users;
	}
	
	//delete the single product
	@Transactional
	public void deleteUser(int uid) {
		User u = this.hibernateTemplate.load(User.class, uid);
		this.hibernateTemplate.delete(u);
	}
	
	//get single user
	public User getUser(int uid) {
		return this.hibernateTemplate.get(User.class, uid);
	}

	public User getUserByEmail(String email) {
	    List<User> userList = (List<User>) hibernateTemplate.findByCriteria(
	            DetachedCriteria.forClass(User.class).add(Restrictions.eq("email", email))
	    );
	    return userList.isEmpty() ? null : userList.get(0);
	}
}
	
