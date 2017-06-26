package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Message;
@Repository
public class MessageDao extends BaseDao<Message> {
   public List<Message> findMessagesBySenderId(int senderId){
	   String hql="FROM Message WHERE senderId=? ORDER BY time DESC";
	   return super.find(hql, new Object[]{senderId});
   }
   public List<Message> findMessagesByRecieverId(int recieverId){
	   String hql="FROM Message WHERE recieverId=? ORDER BY time DESC";
	   return super.find(hql,new Object[]{recieverId});
   }
}
