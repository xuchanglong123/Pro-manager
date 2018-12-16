package com.jerrymice.runner.personalCenter.user.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.entity.Information;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.personalCenter.information.service.PersonalCenterInformationService;
import com.jerrymice.runner.personalCenter.user.service.PersonalCenterUserService;

@Controller
public class PersonalCenterUserController {
	@Resource(name="PersonalCenterUserServiceImpl")
	private PersonalCenterUserService PersonalCenterUserService;
	@Resource(name="PersonalCenterInformationServiceImpl")
	private PersonalCenterInformationService PersonalCenterInformationService;
	
	@RequestMapping(value="/showMassages")
	public String showHeadPortrait(Model model) {
		//得到用户基本信息和详细信息
		User user = PersonalCenterUserService.findByEmail("123456789@qq.com");
		Information information = PersonalCenterInformationService.findById(user.getId());
		
		//获取头像、昵称等界面展示所需信息
		String nickname = user.getNickname();
		String headportrait = user.getHeadPortrait();
		String age = information.getAge();
		
		model.addAttribute("nickname", nickname);
		model.addAttribute("headportrait", headportrait);
		model.addAttribute("age", age);
		
		
		
		return "personalCenter_login";
	}
	
}
