package com.jerrymice.runner.login.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.login.dao.LoginDao;

@Service(value="loginServiceId")
public class LoginServiceImpl implements LoginService {

	@Resource(name="loginDaoId")
	private LoginDao loginDao;

	@Override
	public boolean isExist(String email) {
		String sql = "from User where email=?";
		String [] value = {email};
		User user =  loginDao.get(sql,value);
			if(user.equals(null)) {
				return false;
			}
			return true;
		}

	@Override
	public boolean islogin(String username, String password) {
		System.out.println(username+":"+password);
		String queryString="from User where email=?";
		Object[]values= {username};
		User user=loginDao.get(queryString, values);
		System.out.println(user);
		if(user.getPassword().equals(password)) {
			return true;
		}
		return false;
	}
}
