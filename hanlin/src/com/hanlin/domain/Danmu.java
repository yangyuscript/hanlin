package com.hanlin.domain;

public class Danmu {
	private int danmuId;
	private int measureId;
	private String text;
	private String color;
	private int position;
	private int size;
	private int time;

	public Danmu() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Danmu(int measureId, String text, String color, int position,
			int size, int time) {
		super();
		this.measureId = measureId;
		this.text = text;
		this.color = color;
		this.position = position;
		this.size = size;
		this.time = time;
	}

	public int getDanmuId() {
		return danmuId;
	}

	public void setDanmuId(int danmuId) {
		this.danmuId = danmuId;
	}

	public int getMeasureId() {
		return measureId;
	}

	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPosition() {
		return position;
	}

	public void setPosition(int position) {
		this.position = position;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}
}
