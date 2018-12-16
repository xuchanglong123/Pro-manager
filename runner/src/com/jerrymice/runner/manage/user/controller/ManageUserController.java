package com.jerrymice.runner.manage.user.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.entity.Information;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.manage.information.service.ManageInformationService;
import com.jerrymice.runner.manage.user.service.ManageUserService;

@Controller
public class ManageUserController {
	@Resource(name="manageUserServiceId")
	private ManageUserService manageUserService;
	@Resource(name="manageInformationServiceId")
	private ManageInformationService manageInformationService;
	@RequestMapping("/test")
	public void temp() {
		User user=new User();
		Information information=new Information();
		user.setInformation(information);
		information.setUser(user);
//		manageInformationService.saveInformation(information);
		this.manageUserService.saveUser(user);
		
		
		
		
		
		
		
		
	}
}
