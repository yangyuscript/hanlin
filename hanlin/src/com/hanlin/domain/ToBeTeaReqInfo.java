package com.hanlin.domain;

public class ToBeTeaReqInfo extends ToBeTeaReq {
    private int toBeTeaReqId;
	private User user;
	public ToBeTeaReqInfo(int userId, String idenNum, String idenPic,
			String time, int condi) {
		super(userId, idenNum, idenPic, time, condi);
		// TODO Auto-generated constructor stub
	}
	public ToBeTeaReqInfo(int userId, String idenNum, String idenPic,
			String time, int condi, int toBeTeaReqId, User user) {
		super(userId, idenNum, idenPic, time, condi);
		this.toBeTeaReqId = toBeTeaReqId;
		this.user = user;
	}
	public int getToBeTeaReqId() {
		return toBeTeaReqId;
	}
	public void setToBeTeaReqId(int toBeTeaReqId) {
		this.toBeTeaReqId = toBeTeaReqId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}   
}
