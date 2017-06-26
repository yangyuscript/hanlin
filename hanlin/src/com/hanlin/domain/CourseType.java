package com.hanlin.domain;

public class CourseType {
	private int courseTypeId;
	private String courseTypeName;

	public CourseType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CourseType(String courseTypeName) {
		super();
		this.courseTypeName = courseTypeName;
	}

	public int getCourseTypeId() {
		return courseTypeId;
	}

	public void setCourseTypeId(int courseTypeId) {
		this.courseTypeId = courseTypeId;
	}

	public String getCourseTypeName() {
		return courseTypeName;
	}

	public void setCourseTypeName(String courseTypeName) {
		this.courseTypeName = courseTypeName;
	}
}
