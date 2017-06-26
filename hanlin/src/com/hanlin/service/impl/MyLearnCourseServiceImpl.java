package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.MyLearnCourseDao;
import com.hanlin.domain.MyLearnCourse;
import com.hanlin.service.MyLearnCourseService;
@Service("myLearnCourseService")
@Transactional
public class MyLearnCourseServiceImpl implements MyLearnCourseService {
    @Autowired
    private MyLearnCourseDao myLearnCourseDao;
	@Override
	public void addMyLearnCourse(MyLearnCourse myLearnCourse) {
        myLearnCourseDao.save(myLearnCourse);
	}

	@Override
	public void modifyMyLearnCourse(MyLearnCourse myLearnCourse) {
        myLearnCourseDao.update(myLearnCourse);
	}

	@Override
	public List<MyLearnCourse> findMyLearnCoursesByUserId(int userId) {
		return myLearnCourseDao.findMyLearnCoursesByUserId(userId);
	}

	@Override
	public MyLearnCourse getMyLearnCourseByMyLearnCourseId(int myLearnCourseId) {
		return myLearnCourseDao.getMyLearnCourseByMyLearnCourseId(myLearnCourseId);
	}

	@Override
	public void deleteMyLearnCourse(MyLearnCourse myLearnCourse) {
		myLearnCourseDao.delete(myLearnCourse);
	}

	@Override
	public boolean userIsHaveLearnedCourse(int userId, int courseId) {
		return myLearnCourseDao.userIsHaveLearnedCourse(userId, courseId);
	}

	@Override
	public List<MyLearnCourse> findMyLearnCoursesByCourseId(int courseId) {
		return myLearnCourseDao.findMyLearnCoursesByCourseId(courseId);
	}

	@Override
	public MyLearnCourse getUserLatestLearn(int userId) {
		return myLearnCourseDao.getUserLatestLearn(userId);
	}
    
}
