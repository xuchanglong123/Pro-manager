package com.jerrymice.runner.change.dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.util.impl.BaseDaoImpl;

@Repository(value="changeDao")
public class ChangeDaoImpl extends BaseDaoImpl<User> implements ChangeDao {
}
