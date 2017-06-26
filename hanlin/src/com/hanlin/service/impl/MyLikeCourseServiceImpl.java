package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.MyLikeCourseDao;
import com.hanlin.domain.MyLikeCourse;
import com.hanlin.service.MyLikeCourseService;
@Service("myLikeCourseService")
@Transactional
public class MyLikeCourseServiceImpl implements MyLikeCourseService {
    @Autowired
    private MyLikeCourseDao myLikeCourseDao;
	@Override
	public void addMyLikeCourse(MyLikeCourse myLikeCourse) {
        myLikeCourseDao.save(myLikeCourse);
	}

	@Override
	public void deleteMyLikeCourse(MyLikeCourse myLikeCourse) {
        myLikeCourseDao.delete(myLikeCourse);
	}

	@Override
	public List<MyLikeCourse> findMyLikeCourseByUserId(int userId) {
		return myLikeCourseDao.findMyLikeCourseByUserId(userId);
	}

	@Override
	public boolean userIsHaveLikedCourse(int userId, int courseId) {
		return myLikeCourseDao.userIsHaveLikedCourse(userId, courseId);
	}

	@Override
	public MyLikeCourse getUserLatestLike(int userId) {
		return myLikeCourseDao.getUserLatestLike(userId);
	}

	@Override
	public MyLikeCourse getById(int myLikeCourseId) {
		return myLikeCourseDao.getById(myLikeCourseId);
	}
    
}
