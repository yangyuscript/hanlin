package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.MyLearnCourse;
import com.hanlin.domain.MyLikeCourse;
import com.hanlin.domain.User;

@Repository
public class MyLikeCourseDao extends BaseDao<MyLikeCourse> {
   public List<MyLikeCourse> findMyLikeCourseByUserId(int userId){
	   String hql="FROM MyLikeCourse WHERE userId=?";
	   return super.find(hql, new Object[]{userId});
   }
   public boolean userIsHaveLikedCourse(int userId,int courseId){
	   String hql="FROM MyLikeCourse WHERE userId=? AND courseId=?";
	   List<MyLikeCourse> myLikeCoursesList=super.find(hql,new Object[]{userId,courseId});
	   if(myLikeCoursesList.size()!=0&&myLikeCoursesList!=null){
		   return true;//表明某用户已经学习该课程了
	   }
	   return false;//表明某用户还没有学习该课程
   }
   public MyLikeCourse getUserLatestLike(int userId){
	   String hql="FROM MyLikeCourse WHERE userId="+userId+"ORDER BY time Desc";
	   List<MyLikeCourse> list=super.getPageList(hql, 0, 1);
	   if(list!=null&&list.size()!=0){
		   return list.get(0);
	   }
	   return null;
   }
   public MyLikeCourse getById(int myLikeCourseId){
   	String hqlString="FROM MyLikeCourse WHERE myLikeCourseId=?";
   	List<MyLikeCourse> list=super.find(hqlString, new Object[]{myLikeCourseId});
   	if(list.size()!=0&&list!=null){
   		return list.get(0);
   	}
   	return null;
   }
}
