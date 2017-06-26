package com.hanlin.domain;

public class MessageInfo extends Message {
	private int messageId;
	private User sendUser;
	private User recieveUser;
	public MessageInfo(int senderId, int recieverId, String title,
			String content, String time) {
		super(senderId, recieverId, title, content, time);
		// TODO Auto-generated constructor stub
	}
	public MessageInfo(int senderId, int recieverId, String title,
			String content, String time, int messageId, User sendUser,
			User recieveUser) {
		super(senderId, recieverId, title, content, time);
		this.messageId = messageId;
		this.sendUser = sendUser;
		this.recieveUser = recieveUser;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public User getSendUser() {
		return sendUser;
	}
	public void setSendUser(User sendUser) {
		this.sendUser = sendUser;
	}
	public User getRecieveUser() {
		return recieveUser;
	}
	public void setRecieveUser(User recieveUser) {
		this.recieveUser = recieveUser;
	}

	
}
