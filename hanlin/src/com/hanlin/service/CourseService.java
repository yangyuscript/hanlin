package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Course;
import com.hanlin.domain.MyLearnCourse;
import com.hanlin.domain.Pager;

public interface CourseService {
   public void addOneCourse(Course course);
   public List<Course> findCoursesByTeacherId(int teacherId);
   public Course getCourseByCourseId(int courseId);
   public void modifyCourse(Course course);
   public Pager<Course> findCoursesWithSearch(String courseName, int courseTypeId,String time,
			int pageNum, int pageSize);
   public List<Course> findCoursesLastestFour();
   public Course getRecCourse(int courseType,int courseId);
}
