package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.CourseType;
public interface CourseTypeService {
   public void addOneCourseType(CourseType courseType);
   public List<CourseType> findAllCourseTypes();
   public void modifyCourseType(CourseType courseType);
   public CourseType findCourseTypeByCourseTypeId(int courseTypeId);
}
