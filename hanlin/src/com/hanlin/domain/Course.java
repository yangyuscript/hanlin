package com.hanlin.domain;

public class Course {
	private int courseId;
	private int teacherId;
	private String courseName;
	private String courseHead;
	private int learningPeopleNum;
	private int likeingPeopleNum;
	private String courseIntroduction;
	private String courseTips;
	private int courseType;
	private double courseSatisfied;
	private int courseCondi;
	private String time;

	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Course(int teacherId, String courseName, String courseHead,
			int learningPeopleNum, int likeingPeopleNum,
			String courseIntroduction, String courseTips, int courseType,
			double courseSatisfied, int courseCondi,String time) {
		super();
		this.teacherId = teacherId;
		this.courseName = courseName;
		this.courseHead = courseHead;
		this.learningPeopleNum = learningPeopleNum;
		this.likeingPeopleNum = likeingPeopleNum;
		this.courseIntroduction = courseIntroduction;
		this.courseTips = courseTips;
		this.courseType = courseType;
		this.courseSatisfied = courseSatisfied;
		this.courseCondi = courseCondi;
		this.time=time;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseHead() {
		return courseHead;
	}

	public void setCourseHead(String courseHead) {
		this.courseHead = courseHead;
	}

	public int getLearningPeopleNum() {
		return learningPeopleNum;
	}

	public void setLearningPeopleNum(int learningPeopleNum) {
		this.learningPeopleNum = learningPeopleNum;
	}

	public int getLikeingPeopleNum() {
		return likeingPeopleNum;
	}

	public void setLikeingPeopleNum(int likeingPeopleNum) {
		this.likeingPeopleNum = likeingPeopleNum;
	}

	public String getCourseIntroduction() {
		return courseIntroduction;
	}

	public void setCourseIntroduction(String courseIntroduction) {
		this.courseIntroduction = courseIntroduction;
	}

	public String getCourseTips() {
		return courseTips;
	}

	public void setCourseTips(String courseTips) {
		this.courseTips = courseTips;
	}

	public int getCourseType() {
		return courseType;
	}

	public void setCourseType(int courseType) {
		this.courseType = courseType;
	}

	public double getCourseSatisfied() {
		return courseSatisfied;
	}

	public void setCourseSatisfied(double courseSatisfied) {
		this.courseSatisfied = courseSatisfied;
	}

	public int getCourseCondi() {
		return courseCondi;
	}

	public void setCourseCondi(int courseCondi) {
		this.courseCondi = courseCondi;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
    
}
