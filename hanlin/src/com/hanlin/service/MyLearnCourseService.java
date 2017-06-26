package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.MyLearnCourse;

public interface MyLearnCourseService {
   public void addMyLearnCourse(MyLearnCourse myLearnCourse);
   public void modifyMyLearnCourse(MyLearnCourse myLearnCourse);
   public List<MyLearnCourse> findMyLearnCoursesByUserId(int userId);
   public MyLearnCourse getMyLearnCourseByMyLearnCourseId(int myLearnCourseId);
   public void deleteMyLearnCourse(MyLearnCourse myLearnCourse);
   public boolean userIsHaveLearnedCourse(int userId,int courseId);
   public List<MyLearnCourse> findMyLearnCoursesByCourseId(int courseId);
   public MyLearnCourse getUserLatestLearn(int userId);
}
