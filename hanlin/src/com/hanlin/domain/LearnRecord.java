package com.hanlin.domain;

public class LearnRecord {
	private int learnRecordId;
	private int userId;
	private int measureId;
	private String measureName;
	private String time;
	private int courseId;
	public LearnRecord() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LearnRecord(int userId, int measureId, String measureName,
			String time,int courseId) {
		super();
		this.userId = userId;
		this.measureId = measureId;
		this.measureName = measureName;
		this.time = time;
		this.courseId=courseId;
	}

	public int getLearnRecordId() {
		return learnRecordId;
	}

	public void setLearnRecordId(int learnRecordId) {
		this.learnRecordId = learnRecordId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getMeasureId() {
		return measureId;
	}

	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}

	public String getMeasureName() {
		return measureName;
	}

	public void setMeasureName(String measureName) {
		this.measureName = measureName;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}    
}
