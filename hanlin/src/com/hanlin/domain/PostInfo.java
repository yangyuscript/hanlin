package com.hanlin.domain;

public class PostInfo extends Post {
    private int postId;
	private User user;
	
	public PostInfo(int userId, int courseId, int characterId, int measureId,
			String content, String time, int likeNum, int replyNum) {
		super(userId, courseId, characterId, measureId, content, time, likeNum,
				replyNum);
		// TODO Auto-generated constructor stub
	}
	
	public PostInfo(int userId, int courseId, int characterId, int measureId,
			String content, String time, int likeNum, int replyNum, int postId,
			User user) {
		super(userId, courseId, characterId, measureId, content, time, likeNum,
				replyNum);
		this.postId = postId;
		this.user = user;
	}

	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
