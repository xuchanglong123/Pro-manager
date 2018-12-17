package com.jerrymice.runner.personalCenter.user.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.util.impl.BaseDaoImpl;
@Repository(value="PersonalCenterUserDaoImpl")
public class PersonalCenterUserDaoImpl extends BaseDaoImpl<User> implements PersonalCenterUserDao {

	
}
