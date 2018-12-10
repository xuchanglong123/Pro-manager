package com.jerrymice.runner.user.dao;


import org.springframework.stereotype.Repository;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.util.impl.BaseDaoImpl;
@Repository(value="userDaoId")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {


}
