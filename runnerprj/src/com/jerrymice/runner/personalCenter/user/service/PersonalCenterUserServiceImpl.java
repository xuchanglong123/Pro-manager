package com.jerrymice.runner.personalCenter.user.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.personalCenter.user.dao.PersonalCenterUserDao;
@Service(value="PersonalCenterUserServiceImpl")
public class PersonalCenterUserServiceImpl implements PersonalCenterUserService {
	@Resource(name="PersonalCenterUserDaoImpl")
	private PersonalCenterUserDao PersonalCenterUserDao;
	@Override
	@Transactional(readOnly=false)
	/*存入user对象*/
	public Serializable saveUser(User user) {
		// TODO Auto-generated method stub
		return this.PersonalCenterUserDao.save(user);
	}
	/*查询所有*/
	@Transactional(readOnly=false)
	public List<User> findAll(){
		List<User> list = new ArrayList<User>();
		list = PersonalCenterUserDao.find();
		return list;
	}
	/*邮箱查询*/
	@Transactional(readOnly=false)
	public User findByEmail(String email) {
		String hql = "from User u where u.email=?";
		User user = PersonalCenterUserDao.get(hql, new Object[] {email});
		return user;
		
		
	}


}
