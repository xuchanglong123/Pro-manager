package com.jerrymice.runner.login.service;

public interface LoginService {
	public boolean isExist(String email);
	public boolean islogin(String username, String password);
}
