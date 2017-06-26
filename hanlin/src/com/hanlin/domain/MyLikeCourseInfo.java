package com.hanlin.domain;

public class MyLikeCourseInfo extends MyLikeCourse {
	private int myLikeCourseId;
	private User user;// 课程教师
	private Course course;

	public MyLikeCourseInfo(int userId, int courseId, String time) {
		super(userId, courseId, time);
		// TODO Auto-generated constructor stub
	}

	public MyLikeCourseInfo(int userId, int courseId, String time,
			int myLikeCourseId, User user, Course course) {
		super(userId, courseId, time);
		this.myLikeCourseId = myLikeCourseId;
		this.user = user;
		this.course = course;
	}

	public int getMyLikeCourseId() {
		return myLikeCourseId;
	}

	public void setMyLikeCourseId(int myLikeCourseId) {
		this.myLikeCourseId = myLikeCourseId;
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
