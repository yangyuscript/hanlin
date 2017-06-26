package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.CourseComment;

@Repository
public class CourseCommentDao extends BaseDao<CourseComment>{
	public List<CourseComment> findCourseCommentsByCourseId(int courseId){
		   String hql="FROM CourseComment WHERE courseId=?";
		   List<CourseComment> list=super.find(hql, new Object[]{courseId});
		   return list;
	   }
	   public List<CourseComment> findCourseCommentsByUserId(int userId){
		   String hql="FROM CourseComment WHERE userId=?";
		   List<CourseComment> list=super.find(hql, new Object[]{userId});
		   return list;
	   }
}
