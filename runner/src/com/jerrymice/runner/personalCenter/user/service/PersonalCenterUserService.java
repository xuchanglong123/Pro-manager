package com.jerrymice.runner.personalCenter.user.service;

import java.io.Serializable;
import java.util.List;

import com.jerrymice.runner.entity.User;

public interface PersonalCenterUserService {
	public Serializable saveUser(User save);
	public List<User> findAll();
	public User findByEmail(String email);
}
