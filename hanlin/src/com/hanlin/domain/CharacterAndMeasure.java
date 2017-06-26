package com.hanlin.domain;

import java.util.List;

public class CharacterAndMeasure extends Character {
	private List<Measure> measureList;
	private int characterId;

	public CharacterAndMeasure(int courseId, String title, String discription,
			String time) {
		super(courseId, title, discription, time);
		// TODO Auto-generated constructor stub
	}

	public CharacterAndMeasure(int courseId, String title, String discription,
			String time, List<Measure> measureList,int characterId) {
		super(courseId, title, discription, time);
		this.measureList = measureList;
		this.characterId=characterId;
	}

	public List<Measure> getMeasureList() {
		return measureList;
	}

	public void setMeasureList(List<Measure> measureList) {
		this.measureList = measureList;
	}

	public int getCharacterId() {
		return characterId;
	}

	public void setCharacterId(int characterId) {
		this.characterId = characterId;
	}
    
}
