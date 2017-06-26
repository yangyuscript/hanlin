package com.hanlin.domain;

public class MyLearnCourseInfo extends MyLearnCourse {
	private int myLearnCourseId;
	private User user;//课程老师
	private Course course;
	private LearnRecord learnRecord;

	public MyLearnCourseInfo(int userId, int courseId, int conditi, String time) {
		super(userId, courseId, conditi, time);
		// TODO Auto-generated constructor stub
	}

	public MyLearnCourseInfo(int userId, int courseId, int conditi,
			String time, int myLearnCourseId, User user, Course course,LearnRecord learnRecord) {
		super(userId, courseId, conditi, time);
		this.myLearnCourseId = myLearnCourseId;
		this.user = user;
		this.course = course;
		this.learnRecord=learnRecord;
	}

	public int getMyLearnCourseId() {
		return myLearnCourseId;
	}

	public void setMyLearnCourseId(int myLearnCourseId) {
		this.myLearnCourseId = myLearnCourseId;
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

	public LearnRecord getLearnRecord() {
		return learnRecord;
	}

	public void setLearnRecord(LearnRecord learnRecord) {
		this.learnRecord = learnRecord;
	}
	
}
