package com.jerrymice.runner.manage.information.service;

import java.io.Serializable;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jerrymice.runner.entity.Information;
import com.jerrymice.runner.manage.information.dao.ManageInformationDao;

@Service(value="manageInformationServiceId")
public class ManageInformationServiceImpl implements ManageInformationService{
	@Resource(name="manageInformationDaoId")
	private ManageInformationDao manageInformationDao;
	@Override
	public Serializable saveInformation(Information information) {
		// TODO Auto-generated method stub
		System.out.println("准备存information");
		return manageInformationDao.save(information);
	}

}
