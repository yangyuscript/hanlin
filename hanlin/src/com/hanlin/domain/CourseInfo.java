package com.hanlin.domain;

public class CourseInfo extends Course {
	private int courseId;
	private String teacherHead;
	private String teacherName;
	private String courseTypeInfo;

	public CourseInfo(int teacherId, String courseName, String courseHead,
			int learningPeopleNum, int likeingPeopleNum,
			String courseIntroduction, String courseTips, int courseType,
			double courseSatisfied, int courseCondi, String time) {
		super(teacherId, courseName, courseHead, learningPeopleNum,
				likeingPeopleNum, courseIntroduction, courseTips, courseType,
				courseSatisfied, courseCondi, time);
		// TODO Auto-generated constructor stub
	}

	public CourseInfo(int teacherId, String courseName, String courseHead,
			int learningPeopleNum, int likeingPeopleNum,
			String courseIntroduction, String courseTips, int courseType,
			double courseSatisfied, int courseCondi, String time, int courseId,
			String teacherHead, String teacherName, String courseTypeInfo) {
		super(teacherId, courseName, courseHead, learningPeopleNum,
				likeingPeopleNum, courseIntroduction, courseTips, courseType,
				courseSatisfied, courseCondi, time);
		this.courseId = courseId;
		this.teacherHead = teacherHead;
		this.teacherName = teacherName;
		this.courseTypeInfo = courseTypeInfo;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getTeacherHead() {
		return teacherHead;
	}

	public void setTeacherHead(String teacherHead) {
		this.teacherHead = teacherHead;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getCourseTypeInfo() {
		return courseTypeInfo;
	}

	public void setCourseTypeInfo(String courseTypeInfo) {
		this.courseTypeInfo = courseTypeInfo;
	}

}
