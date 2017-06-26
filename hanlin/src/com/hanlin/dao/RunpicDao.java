package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Runpic;
@Repository
public class RunpicDao extends BaseDao<Runpic> {
   public List<Runpic> findFourRunpics(){
	   String hqlString="FROM Runpic ORDER BY time DESC";
	   List<Runpic>list=super.getPageList(hqlString, 0, 4);
	   if(list.size()!=0&&list!=null){
		   return list;
	   }
	   return null;
   }
   public List<Runpic> findAllRunpics(){
	   String hqlString="FROM Runpic ORDER BY time DESC";
	   return super.find(hqlString);
   }
   public Runpic getRunpicByRunpicId(int runpicId){
	   String hqlString="FROM Runpic WHERE runpicId=?";
	   List<Runpic> list=super.find(hqlString, new Object[]{runpicId});
	   if(list.size()!=0&&list!=null){
		   return list.get(0);
	   }
	   return null;
   }
}
