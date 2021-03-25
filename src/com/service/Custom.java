package com.service;

public class Custom {
	
	
	protected int id;
	protected String username;
	protected String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
    public String toString() {
        return "Custom{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
