package com.hanlin.domain;

public class NoticeInfo extends Notice {
	private int noticeId;
	private User sendUser;

	public NoticeInfo(int senduserId, String title, int noticeType,
			String content, String time, int courseId, int noticeId,
			User sendUser) {
		super(senduserId, title, noticeType, content, time, courseId);
		this.noticeId = noticeId;
		this.sendUser = sendUser;
	}

	public NoticeInfo(int senduserId, String title, int noticeType,
			String content, String time, int courseId) {
		super(senduserId, title, noticeType, content, time, courseId);
	}

	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public User getSendUser() {
		return sendUser;
	}

	public void setSendUser(User sendUser) {
		this.sendUser = sendUser;
	}
    
}
