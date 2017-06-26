package com.hanlin.domain;

public class Measure {
	private int measureId;
	private int courseId;
	private int characterId;
	private String title;
	private String videoPath;
	private String time;
	private String discription;
	private String isHaveExercise;

	public Measure() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Measure(int courseId, int characterId, String title,
			String videoPath, String time,String discription,String isHaveExercise) {
		super();
		this.courseId = courseId;
		this.characterId = characterId;
		this.title = title;
		this.videoPath = videoPath;
		this.time = time;
		this.discription=discription;
		this.isHaveExercise=isHaveExercise;
	}

	public int getMeasureId() {
		return measureId;
	}

	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getCharacterId() {
		return characterId;
	}

	public void setCharacterId(int characterId) {
		this.characterId = characterId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getVideoPath() {
		return videoPath;
	}

	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getIsHaveExercise() {
		return isHaveExercise;
	}

	public void setIsHaveExercise(String isHaveExercise) {
		this.isHaveExercise = isHaveExercise;
	}
	
}
