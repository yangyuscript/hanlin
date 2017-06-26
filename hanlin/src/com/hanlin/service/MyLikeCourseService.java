package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.MyLikeCourse;

public interface MyLikeCourseService {
   public void addMyLikeCourse(MyLikeCourse myLikeCourse);
   public void deleteMyLikeCourse(MyLikeCourse myLikeCourse);
   public List<MyLikeCourse> findMyLikeCourseByUserId(int userId);
   public boolean userIsHaveLikedCourse(int userId,int courseId);
   public MyLikeCourse getUserLatestLike(int userId);
   public MyLikeCourse getById(int myLikeCourseId);
}
