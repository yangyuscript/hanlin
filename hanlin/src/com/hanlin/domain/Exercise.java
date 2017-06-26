package com.hanlin.domain;

public class Exercise {
	private int exerciseId;
	private int measureId;
	private String question;
	private String answer;
	private String acChoice;
	private String bcChoice;
	private String ccChoice;
	private String dcChoice;
	private String time;
	private int courseId;

	public Exercise() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Exercise(int measureId, String question, String answer,
			String acChoice, String bcChoice, String ccChoice, String dcChoice,
			String time,int courseId) {
		super();
		this.measureId = measureId;
		this.question = question;
		this.answer = answer;
		this.acChoice = acChoice;
		this.bcChoice = bcChoice;
		this.ccChoice = ccChoice;
		this.dcChoice = dcChoice;
		this.time = time;
		this.courseId=courseId;
	}

	public int getExerciseId() {
		return exerciseId;
	}

	public void setExerciseId(int exerciseId) {
		this.exerciseId = exerciseId;
	}

	public int getMeasureId() {
		return measureId;
	}

	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	

	public String getAcChoice() {
		return acChoice;
	}

	public void setAcChoice(String acChoice) {
		this.acChoice = acChoice;
	}

	public String getBcChoice() {
		return bcChoice;
	}

	public void setBcChoice(String bcChoice) {
		this.bcChoice = bcChoice;
	}

	public String getCcChoice() {
		return ccChoice;
	}

	public void setCcChoice(String ccChoice) {
		this.ccChoice = ccChoice;
	}

	public String getDcChoice() {
		return dcChoice;
	}

	public void setDcChoice(String dcChoice) {
		this.dcChoice = dcChoice;
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
