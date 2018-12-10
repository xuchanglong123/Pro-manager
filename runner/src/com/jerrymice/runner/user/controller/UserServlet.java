package com.jerrymice.runner.user.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.user.service.UserService;

@Controller
@RequestMapping("/ljz")
public class UserServlet {
	@Resource(name="userServiceId")
	private UserService userService;
	@RequestMapping("/prj")
	public void temp() {
		User user=new User();
		user.setNickname("封闭集");
		userService.saveUser(user);
	}
}
