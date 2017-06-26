package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Exercise;

@Repository
public class ExerciseDao extends BaseDao<Exercise> {
   public List<Exercise> findExerciseByMeasureId(int measureId){
	   String hqlString="FROM Exercise WHERE measureId=?";
	   return super.find(hqlString, new Object[]{measureId});
   }
   public List<Exercise> findThreeExerciseByCourseId(int courseId){
	   String hqlString="FROM Exercise WHERE courseId="+courseId+"ORDER BY time DESC";
	   return super.getPageList(hqlString, 0, 3);
   }
}
