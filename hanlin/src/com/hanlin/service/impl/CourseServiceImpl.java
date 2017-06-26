package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.CourseDao;
import com.hanlin.domain.Course;
import com.hanlin.domain.Pager;
import com.hanlin.service.CourseService;
@Service("courseService")
@Transactional
public class CourseServiceImpl implements CourseService {
	@Autowired
    private CourseDao courseDao;
	@Override
	public void addOneCourse(Course course) {
        courseDao.save(course);
	}
	@Override
	public List<Course> findCoursesByTeacherId(int teacherId) {
		return courseDao.findCoursesByTeacherId(teacherId);
	}
	@Override
	public Course getCourseByCourseId(int courseId) {
		return courseDao.getCourseByCourseId(courseId);
	}
	@Override
	public void modifyCourse(Course course) {
		courseDao.update(course);
	}
	@Override
	public Pager<Course> findCoursesWithSearch(String courseName, int courseTypeId,String time,
			int pageNum, int pageSize) {
		return courseDao.findCoursesWithSearch(courseName, courseTypeId,time, pageNum, pageSize);
	}
	@Override
	public List<Course> findCoursesLastestFour() {
		return courseDao.findCoursesLastestFour();
	}
	@Override
	public Course getRecCourse(int courseType, int courseId) {
		return courseDao.getRecCourse(courseType, courseId);
	}
	
}
