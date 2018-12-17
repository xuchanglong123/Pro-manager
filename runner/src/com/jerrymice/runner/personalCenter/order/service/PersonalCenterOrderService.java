package com.jerrymice.runner.personalCenter.order.service;

public interface PersonalCenterOrderService {
	//订单总数
	public int orderCounts();
	//已完成订单数
	public int orderFinished();
	//进行中订单数
	public int orderUnfinished();
}
