package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.PostDao;
import com.hanlin.domain.Post;
import com.hanlin.service.PostService;
@Service("postService")
@Transactional
public class PostServiceImpl implements PostService {
    @Autowired
    private PostDao postDao;
	@Override
	public void addPost(Post post) {
        postDao.save(post);
	}

	@Override
	public List<Post> findPostsByCourseId(int courseId) {
		return postDao.findPostsByCourseId(courseId);
	}

	@Override
	public List<Post> findPostsByMeasureId(int measureId) {
		return postDao.findPostsByMeasureId(measureId);
	}

	@Override
	public int addPostGetId(Post post) {
		return postDao.add(post);
	}
    
}
