package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Pager;
import com.hanlin.domain.User;

public interface UserService {
   public void regist(User user);
   public User getUserByAccount(String account);
   public boolean userLogin(String account,String password);
   public List<User> findAllUsers();
   public Pager<User> findUsersByPager(String account,String nickname,int pageNum,int pageSize);
   public User getUserByUserId(int userId);
   public int countAll();
   public void updateUser(User user);
   public List<User> findAllTeachers();
   public User getSuper();
}
