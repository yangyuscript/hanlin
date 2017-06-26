package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.LearnRecord;
@Repository
public class LearnRecordDao extends BaseDao<LearnRecord> {
   public LearnRecord getByUserIdAndCourseId(int userId,int courseId){
	   String hql="FROM LearnRecord WHERE userId=? AND courseId=? ORDER BY time DESC";
	   List<LearnRecord> list=super.find(hql, new Object[]{userId,courseId});
	   if(list.size()!=0&&list!=null){
		   return list.get(0);
	   }
	   return null;
   }
}
