package com.jerrymice.runner.orderManagement.service;


import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jerrymice.runner.entity.Order;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.orderManagement.Dao.OrderManagementDao;
import com.jerrymice.runner.orderManagement.Dao.OrderManagementDao2;


@Service(value="orderManagementServiceId")
public class OrderManagementServiceImpl implements OrderManagementService {
	@Resource(name="orderManagementDaoId")
	private OrderManagementDao orderManagementDao;
	@Resource(name="orderManagementDaoId2")
	private OrderManagementDao2 orderManagementDao2;
	@Override
	public List<Order> findAll(Object[] userid) {
		// TODO Auto-generated method stub
		return this.orderManagementDao.find("from Order o where o.invoiceId = ?",userid);
	}

	@Override
	public User getuser(int uid) {
		// TODO Auto-generated method stub
		return 	this.orderManagementDao2.get(uid);
	}

	@Override
	public List<Order> findByStatus(Object[] userid) {
		// TODO Auto-generated method stub
		return this.orderManagementDao.find("from Order o where o.invoiceId = ? and o.status = ?",userid);
	}

	@Override
	public List<Order> findByStatus2(Object[] userid) {
		// TODO Auto-generated method stub
		return this.orderManagementDao.find("from Order o where o.invoiceId = ? and o.status in (4,5)",userid);
	}

	@Override
	public List<Order> findByStatus3(Object[] userid) {
		// TODO Auto-generated method stub
		return this.orderManagementDao.find("from Order o where o.invoiceId = ? and o.status in (3,7,8)",userid);
	}

	@Override
	public List<Order> findByStatus4(Object[] userid) {
		// TODO Auto-generated method stub
		return this.orderManagementDao.find("from Order o where o.invoiceId = ? and o.status in (1,2,6)",userid);
	}

	public Order findByOId(Object[] userid){
		// TODO Auto-generated method stub
		return this.orderManagementDao.get("from Order o where o.invoiceId = ? and o.orderNumber =? ",userid);

	}
	

}
