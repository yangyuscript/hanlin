package com.hanlin.domain;

public class Message {
	private int messageId;
	private int senderId;
	private int recieverId;
	private String title;// 私信内容描述
	private String content;
	private String time;

	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Message(int senderId, int recieverId, String title, String content,
			String time) {
		super();
		this.senderId = senderId;
		this.recieverId = recieverId;
		this.title = title;
		this.content = content;
		this.time = time;
	}

	public int getMessageId() {
		return messageId;
	}

	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}

	public int getSenderId() {
		return senderId;
	}

	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}

	public int getRecieverId() {
		return recieverId;
	}

	public void setRecieverId(int recieverId) {
		this.recieverId = recieverId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

}
