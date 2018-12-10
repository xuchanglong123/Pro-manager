package com.jerrymice.runner.user.service;

import java.io.Serializable;

import com.jerrymice.runner.entity.User;

public interface UserService {
	public Serializable saveUser(User user);
}
