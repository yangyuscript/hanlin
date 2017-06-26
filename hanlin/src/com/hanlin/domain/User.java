package com.hanlin.domain;

public class User {
	private int userId;
	private String account;
	private String password;
	private String head;
	private String nickname;
	private int credits;
    private int condi;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String account, String password, String head, String nickname,
			int credits, int condi) {
		super();
		this.account = account;
		this.password = password;
		this.head = head;
		this.nickname = nickname;
		this.credits = credits;
		this.condi = condi;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getCredits() {
		return credits;
	}
	public void setCredits(int credits) {
		this.credits = credits;
	}
	public int getCondi() {
		return condi;
	}
	public void setCondi(int condi) {
		this.condi = condi;
	}
}
