package com.hanlin.domain;

public class MyLearnCourse {
	private int myLearnCourseId;
	private int userId;
	private int courseId;
	private int conditi;
	private String time;

	public MyLearnCourse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyLearnCourse(int userId, int courseId, int conditi, String time) {
		super();
		this.userId = userId;
		this.courseId = courseId;
		this.conditi = conditi;
		this.time = time;
	}

	public int getMyLearnCourseId() {
		return myLearnCourseId;
	}

	public void setMyLearnCourseId(int myLearnCourseId) {
		this.myLearnCourseId = myLearnCourseId;
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

	public int getConditi() {
		return conditi;
	}

	public void setConditi(int conditi) {
		this.conditi = conditi;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
}
