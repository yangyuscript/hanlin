package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.UserDao;
import com.hanlin.dao.UserDao;
import com.hanlin.domain.Pager;
import com.hanlin.domain.User;
import com.hanlin.service.UserService;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
    private UserDao userDao;
	@Override
	public void regist(User user) {
		userDao.save(user);
	}
	@Override
	public User getUserByAccount(String account) {
		return userDao.getUserByAccount(account);
	}
	@Override
	public boolean userLogin(String account, String password) {
		User user=userDao.getUserByAccount(account);
		if(user!=null&&password.equals(user.getPassword())){
			return true;//登陆成功
		}
		return false;//登陆失败
	}
	@Override
	public List<User> findAllUsers() {
		return userDao.findAllUsers();
	}
	@Override
	public Pager<User> findUsersByPager(String account, String nickname,
			int pageNum, int pageSize) {
		return userDao.findUsersByPager(account, nickname, pageNum, pageSize);
	}
	@Override
	public User getUserByUserId(int userId) {
		return userDao.getUserByUserId(userId);
	}
	@Override
	public int countAll() {
		return userDao.countAll();
	}
	@Override
	public void updateUser(User user) {
		userDao.update(user);
	}
	@Override
	public List<User> findAllTeachers() {
		return userDao.findAllTeachers();
	}
	@Override
	public User getSuper() {
		return userDao.getSuper();
	}
    
}
