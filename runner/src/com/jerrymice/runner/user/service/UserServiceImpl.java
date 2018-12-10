package com.jerrymice.runner.user.service;

import java.io.Serializable;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.user.dao.UserDao;
@Service(value="userServiceId")
public class UserServiceImpl implements UserService {
	@Resource(name="userDaoId")
	private UserDao userDao;
	@Override
	public Serializable saveUser(User user) {
		// TODO Auto-generated method stub
		return userDao.save(user);
	}

}
