package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.MyLearnCourse;

@Repository
public class MyLearnCourseDao extends BaseDao<MyLearnCourse> {
   public List<MyLearnCourse> findMyLearnCoursesByUserId(int userId){
	   String hql="FROM MyLearnCourse WHERE userId=?";
	   List<MyLearnCourse> list=super.find(hql, new Object[]{userId});
	   return list;
   }
   public MyLearnCourse getMyLearnCourseByMyLearnCourseId(int myLearnCourseId){
	   String hqlString="FROM MyLearnCourse WHERE myLearnCourseId=?";
	   List<MyLearnCourse> list=super.find(hqlString,new Object[]{myLearnCourseId});
	   if(list.size()!=0&&list!=null){
		   return list.get(0);
	   }
	   return null;
   }
   public boolean userIsHaveLearnedCourse(int userId,int courseId){
	   String hql="FROM MyLearnCourse WHERE userId=? AND courseId=?";
	   List<MyLearnCourse> myLearnCoursesList=super.find(hql,new Object[]{userId,courseId});
	   if(myLearnCoursesList.size()!=0&&myLearnCoursesList!=null){
		   return true;//表明某用户已经学习该课程了
	   }
	   return false;//表明某用户还没有学习该课程
   }
   public List<MyLearnCourse> findMyLearnCoursesByCourseId(int courseId){
	   String hql="FROM MyLearnCourse WHERE courseId=?";
	   List<MyLearnCourse> list=super.find(hql, new Object[]{courseId});
	   return list;
   }
   public MyLearnCourse getUserLatestLearn(int userId){
	   String hql="FROM MyLearnCourse WHERE userId="+userId+"ORDER BY time Desc";
	   //String hql="FROM MyLearnCourse";
	   List<MyLearnCourse> list=super.getPageList(hql, 0, 1);
	   if(list!=null&&list.size()!=0){
		   return list.get(0);
	   }
	   return null;
   }
}
