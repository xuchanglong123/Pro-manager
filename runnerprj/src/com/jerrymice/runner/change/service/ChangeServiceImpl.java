package com.jerrymice.runner.change.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jerrymice.runner.change.dao.ChangeDao;
import com.jerrymice.runner.entity.User;

@Service(value="changeServiceId")
public class ChangeServiceImpl implements ChangeService {
	@Resource(name="changeDao")
	private ChangeDao cd ;
	
	@Transactional(readOnly=false)
	@Override
	public void updateUser(String oldEmail,String newEmail) {
		System.out.println(oldEmail+":"+newEmail);
		String queryString="from User where email=?";
		Object[]values= {oldEmail};
		User user=cd.get(queryString, values);
		System.out.println(user);
		user.setEmail(newEmail);
		cd.update(user);
	}
}
