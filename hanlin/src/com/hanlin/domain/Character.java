package com.hanlin.domain;

public class Character {
	private int characterId;
	private int courseId;
	private String title;
	private String discription;
	private String time;

	public Character() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Character(int courseId, String title, String discription, String time) {
		super();
		this.courseId = courseId;
		this.title = title;
		this.discription = discription;
		this.time = time;
	}

	public int getCharacterId() {
		return characterId;
	}

	public void setCharacterId(int characterId) {
		this.characterId = characterId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
