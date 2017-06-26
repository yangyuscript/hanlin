package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.ToBeTeaReq;
@Repository
public class ToBeTeaReqDao extends BaseDao<ToBeTeaReq> {
   public ToBeTeaReq getToBeTeaReqByUserId(int userId){
	   String hql="FROM ToBeTeaReq WHERE userId=?";
	   List<ToBeTeaReq> list=super.find(hql, new Object[]{userId});
	   if(list!=null&&list.size()!=0){
		   return list.get(0);
	   }
	   return null;
   }
   public ToBeTeaReq getToBeTeaReqByToBeTeaReqId(int toBeTeaReqId){
	   String hql="FROM ToBeTeaReq WHERE toBeTeaReqId=?";
	   List<ToBeTeaReq> list=super.find(hql, new Object[]{toBeTeaReqId});
	   if(list!=null&&list.size()!=0){
		   return list.get(0);
	   }
	   return null;
   }
   public List<ToBeTeaReq> findAllToBeTeaReqs(){
	   String hql="FROM ToBeTeaReq ORDER BY time DESC";
	   return super.find(hql);
   }
}
