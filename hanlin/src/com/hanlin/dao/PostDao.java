package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Post;
@Repository
public class PostDao extends BaseDao<Post> {
  public List<Post> findPostsByCourseId(int courseId){
	  String hqlString="FROM Post WHERE courseId=? ORDER BY time DESC";
	  return super.find(hqlString, new Object[]{courseId});
  }
  public List<Post> findPostsByMeasureId(int measureId){
	  String hqlString="FROM Post WHERE measureId=? ORDER BY time DESC";
	  return super.find(hqlString,new Object[]{measureId});
  }
}
