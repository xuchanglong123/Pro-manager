package com.jerrymice.runner.message.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jerrymice.runner.entity.SystemNotice;
import com.jerrymice.runner.message.dao.SystemMessageDao;

@Service(value="systemMessageServiceId")
public class SystemMessageServiceImpl implements SystemMessageService{
	@Resource(name="systemMessageDaoId")
	private SystemMessageDao systemMessageDao;
	@Override
	public List<SystemNotice>  findSysMsg(String queryString,Object[] values){
		return systemMessageDao.find(queryString, values);
	}
}
