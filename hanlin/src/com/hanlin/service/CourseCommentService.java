package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.CourseComment;

public interface CourseCommentService {
   public void addCourseComment(CourseComment courseComment);
   public List<CourseComment> findCourseCommentsByCourseId(int courseId);
   public List<CourseComment> findCourseCommentsByUserId(int userId);
   public void deleteCourseComment(CourseComment courseComment);
}
