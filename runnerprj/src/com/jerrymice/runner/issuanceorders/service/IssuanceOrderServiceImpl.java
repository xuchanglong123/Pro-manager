package com.jerrymice.runner.issuanceorders.service;

import java.io.Serializable;
import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.jerrymice.runner.entity.Order;
import com.jerrymice.runner.issuanceorders.dao.IssuanceOrderDao;
@Repository(value="issuanceOrderServiceId")
public class IssuanceOrderServiceImpl implements IssuanceOrderService {
	@Resource(name="issuanceOrderDaoId")
	private IssuanceOrderDao issuanceOrderDao;
	@Override
	public Serializable saveOrder(Order order) {
		return issuanceOrderDao.save(order);
	}
}
