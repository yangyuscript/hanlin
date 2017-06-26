package com.hanlin.domain;

public class MyLikeCourse {
	private int myLikeCourseId;
	private int userId;
	private int courseId;
	private String time;

	public MyLikeCourse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyLikeCourse(int userId, int courseId, String time) {
		super();
		this.userId = userId;
		this.courseId = courseId;
		this.time = time;
	}

	public int getMyLikeCourseId() {
		return myLikeCourseId;
	}

	public void setMyLikeCourseId(int myLikeCourseId) {
		this.myLikeCourseId = myLikeCourseId;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
