package com.jerrymice.runner.retrieve.service;

public interface RetrieveService {
	public boolean isOk(String username, String password,String newPasswd);
	public boolean isExist(String email);
}
