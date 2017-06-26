package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.CourseCommentDao;
import com.hanlin.domain.CourseComment;
import com.hanlin.service.CourseCommentService;
@Service("courseCommentService")
@Transactional
public class CourseCommentServiceImpl implements CourseCommentService {
    @Autowired
    private CourseCommentDao courseCommentDao;
	@Override
	public void addCourseComment(CourseComment courseComment) {
        courseCommentDao.save(courseComment);
	}

	@Override
	public List<CourseComment> findCourseCommentsByCourseId(int courseId) {
		return courseCommentDao.findCourseCommentsByCourseId(courseId);
	}

	@Override
	public List<CourseComment> findCourseCommentsByUserId(int userId) {
		return courseCommentDao.findCourseCommentsByUserId(userId);
	}

	@Override
	public void deleteCourseComment(CourseComment courseComment) {
		courseCommentDao.delete(courseComment);
	}
    
}
