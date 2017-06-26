package com.hanlin.domain;

public class Runpic {
	private int runpicId;
	private String runpicPath;
	private String disc;
	private String time;

	public Runpic() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Runpic(String runpicPath, String disc, String time) {
		super();
		this.runpicPath = runpicPath;
		this.disc = disc;
		this.time = time;
	}

	public int getRunpicId() {
		return runpicId;
	}

	public void setRunpicId(int runpicId) {
		this.runpicId = runpicId;
	}

	public String getRunpicPath() {
		return runpicPath;
	}

	public void setRunpicPath(String runpicPath) {
		this.runpicPath = runpicPath;
	}

	public String getDisc() {
		return disc;
	}

	public void setDisc(String disc) {
		this.disc = disc;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
}
