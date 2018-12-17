package com.jerrymice.runner.retrieve.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.retrieve.dao.RetrieveDao;

@Service(value="retrieveServiceId")
public class RetrieveServiceImpl implements RetrieveService {
	
	@Resource(name="retrieveDaoId")
	private RetrieveDao retrieveDao;
	
	
	@Override
	public boolean isExist(String email) {
		String sql = "from User where email=?";
		String [] value = {email};
		User user =  retrieveDao.get(sql,value);
			if(user.equals(null)) {
				return false;
			}
			return true;
		}
	
	@Transactional(readOnly=false)
	@Override
	public boolean isOk(String username, String password,String newPasswd) {
		System.out.println(username+":"+password);
		String queryString="from User where email=?";
		Object[]values= {username};
		User user=retrieveDao.get(queryString, values);
		System.out.println(user);
		if(user.getPassword().equals(password)) {
			user.setPassword(newPasswd);
			retrieveDao.update(user);
			return true;
		}
		return false;
	}
}
