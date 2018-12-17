package com.jerrymice.runner.personalCenter.order.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jerrymice.runner.entity.Order;
import com.jerrymice.runner.personalCenter.order.dao.PersonalCenterOrderDao;

@Service(value="PersonalCenterOrderServiceImpl")
public class PersonalCenterOrderServiceImpl implements PersonalCenterOrderService {
	@Resource(name="PersonalCenterOrderDaoImpl")
	private PersonalCenterOrderDao PersonalCenterOrderDao;
	
	@Override
	public int orderCounts() {
		// TODO Auto-generated method stub
		List<Order> list = PersonalCenterOrderDao.find();
		int count = list.size();
		return count;
	}

	@Override
	public int orderFinished() {
		// TODO Auto-generated method stub
		String hql = "from Order o where o.status=?";
		List<Order> list = PersonalCenterOrderDao.find(hql, new Object[] {new Integer(1)});
		int count = list.size();
		return count;
	}

	@Override
	public int orderUnfinished() {
		// TODO Auto-generated method stub
		String hql = "from Order o where o.status=?";
		List<Order> list = PersonalCenterOrderDao.find(hql, new Object[] {new Integer(0)});
		int count = list.size();
		return count;
	}

}
