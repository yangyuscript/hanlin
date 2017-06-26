package com.hanlin.domain;

public class CourseComment {
	private int courseCommentId;
	private int courseId;
	private int userId;
	private int level;
	private String content;
	private String time;

	public CourseComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CourseComment(int courseId, int userId, int level, String content,
			String time) {
		super();
		this.courseId = courseId;
		this.userId = userId;
		this.level = level;
		this.content = content;
		this.time = time;
	}

	public int getCourseCommentId() {
		return courseCommentId;
	}

	public void setCourseCommentId(int courseCommentId) {
		this.courseCommentId = courseCommentId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
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
}
