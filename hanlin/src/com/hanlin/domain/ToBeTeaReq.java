package com.hanlin.domain;

public class ToBeTeaReq {
	private int toBeTeaReqId;
	private int userId;
	private String idenNum;
	private String idenPic;
	private String time;
	private int condi;

	public ToBeTeaReq() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ToBeTeaReq(int userId, String idenNum, String idenPic, String time,
			int condi) {
		super();
		this.userId = userId;
		this.idenNum = idenNum;
		this.idenPic = idenPic;
		this.time = time;
		this.condi = condi;
	}

	public int getToBeTeaReqId() {
		return toBeTeaReqId;
	}

	public void setToBeTeaReqId(int toBeTeaReqId) {
		this.toBeTeaReqId = toBeTeaReqId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getIdenNum() {
		return idenNum;
	}

	public void setIdenNum(String idenNum) {
		this.idenNum = idenNum;
	}

	public String getIdenPic() {
		return idenPic;
	}

	public void setIdenPic(String idenPic) {
		this.idenPic = idenPic;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getCondi() {
		return condi;
	}

	public void setCondi(int condi) {
		this.condi = condi;
	}
}
