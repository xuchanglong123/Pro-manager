package com.jerrymice.runner.orderManagement.service;

import java.util.List;

import com.jerrymice.runner.entity.Order;
import com.jerrymice.runner.entity.User;

public interface OrderManagementService {
	public List<Order>findAll(Object[] userid);
	public List<Order>findByStatus(Object[] userid);//单个状态
	public User getuser(int uid);
	public List<Order>findByStatus2(Object[] userid);//其他
	public List<Order>findByStatus3(Object[] userid);//已完成
	public List<Order>findByStatus4(Object[] userid);//运送中
	public Order findByOId(Object[] userid);
}
