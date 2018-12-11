package com.jerrymice.runner.manage.user.service;

import java.io.Serializable;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.manage.user.dao.ManageUserDao;
@Service(value="manageUserServiceId")
public class ManageUserServiceImpl implements ManageUserService {
	@Resource(name="manageUserDaoId")
	private ManageUserDao manageUserDao;
	@Override
	@Transactional(readOnly=false)
	public Serializable saveUser(User user) {
		// TODO Auto-generated method stub
		System.out.println("准备存user");
		return manageUserDao.save(user);
	}

}
