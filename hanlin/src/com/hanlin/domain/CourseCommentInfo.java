package com.hanlin.domain;

public class CourseCommentInfo extends CourseComment {
	private int courseCommentId;
	private User user;// 评价人
	private Course course;

	public CourseCommentInfo(int courseId, int userId, int level,
			String content, String time) {
		super(courseId, userId, level, content, time);
		// TODO Auto-generated constructor stub
	}

	public CourseCommentInfo(int courseId, int userId, int level,
			String content, String time, int courseCommentId, User user,
			Course course) {
		super(courseId, userId, level, content, time);
		this.courseCommentId = courseCommentId;
		this.user = user;
		this.course = course;
	}

	public int getCourseCommentId() {
		return courseCommentId;
	}

	public void setCourseCommentId(int courseCommentId) {
		this.courseCommentId = courseCommentId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}
