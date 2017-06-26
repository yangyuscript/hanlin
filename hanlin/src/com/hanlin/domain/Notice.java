package com.hanlin.domain;

public class Notice {
	private int noticeId;
	private int senduserId;
	private String title;
	private int noticeType;
	private String content;
	private String time;
    private int courseId;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notice(int senduserId, String title, int noticeType, String content,
			String time,int courseId) {
		super();
		this.senduserId = senduserId;
		this.title = title;
		this.noticeType = noticeType;
		this.content = content;
		this.time = time;
		this.courseId=courseId;
	}
	public Notice(int senduserId, String title, int noticeType, String content,
			String time) {
		super();
		this.senduserId = senduserId;
		this.title = title;
		this.noticeType = noticeType;
		this.content = content;
		this.time = time;
	}
	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public int getSenduserId() {
		return senduserId;
	}

	public void setSenduserId(int senduserId) {
		this.senduserId = senduserId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getNoticeType() {
		return noticeType;
	}

	public void setNoticeType(int noticeType) {
		this.noticeType = noticeType;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
