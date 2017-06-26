package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Measure;
@Repository
public class MeasureDao extends BaseDao<Measure> {
   public List<Measure> findMeasuresByCharacterId(int characterId){
	   String hqlString="FROM Measure WHERE characterId=?";
	   return super.find(hqlString, new Object[]{characterId});
   }
   public Measure getMeasureByMeasureId(int measureId){
	   String hql="FROM Measure WHERE measureId=?";
	   List<Measure> lists=super.find(hql, new Object[]{measureId});
	   if(lists.size()!=0&&lists!=null){
		   return lists.get(0);
	   }
	   return null;
   }
   public List<Measure> findThreeMeasuresByCourseId(int courseId){
	   String hqlString="FROM Measure WHERE courseId="+courseId+"ORDER BY time DESC";
	   return super.getPageList(hqlString, 0, 3);
   }
}
