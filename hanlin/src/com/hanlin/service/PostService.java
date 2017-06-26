package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Post;

public interface PostService {
   public void addPost(Post post);
   public List<Post> findPostsByCourseId(int courseId);
   public List<Post> findPostsByMeasureId(int measureId);
   public int addPostGetId(Post post);
}
