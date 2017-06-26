package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.CourseTypeDao;
import com.hanlin.domain.CourseType;
import com.hanlin.service.CourseTypeService;
@Service("courseTypeService")
@Transactional
public class CourseTypeServiceImpl implements CourseTypeService {
    @Autowired
    private CourseTypeDao courseTypeDao;
	@Override
	public void addOneCourseType(CourseType courseType) {
         courseTypeDao.save(courseType);
	}

	@Override
	public List<CourseType> findAllCourseTypes() {
		return courseTypeDao.findAllCourseType();
	}

	@Override
	public void modifyCourseType(CourseType courseType) {
		courseTypeDao.update(courseType);
	}

	@Override
	public CourseType findCourseTypeByCourseTypeId(int courseTypeId) {
		return courseTypeDao.findCourseTypeByCourseTypeId(courseTypeId);
	}
    
}
