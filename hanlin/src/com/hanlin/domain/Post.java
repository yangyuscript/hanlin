package com.hanlin.domain;

public class Post {
	private int postId;
	private int userId;
	private int courseId;
	private int characterId;
	private int measureId;
	private String content;
	private String time;
	private int likeNum;
	private int replyNum;

	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Post(int userId, int courseId, int characterId, int measureId,
			String content, String time, int likeNum, int replyNum) {
		super();
		this.userId = userId;
		this.courseId = courseId;
		this.characterId = characterId;
		this.measureId = measureId;
		this.content = content;
		this.time = time;
		this.likeNum = likeNum;
		this.replyNum = replyNum;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getCharacterId() {
		return characterId;
	}

	public void setCharacterId(int characterId) {
		this.characterId = characterId;
	}

	public int getMeasureId() {
		return measureId;
	}

	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getLikeNum() {
		return likeNum;
	}

	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}
}
