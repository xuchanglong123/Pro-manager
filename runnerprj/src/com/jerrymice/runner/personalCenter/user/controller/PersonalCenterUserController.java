package com.jerrymice.runner.personalCenter.user.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.entity.Information;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.personalCenter.comment.dao.PersonalCenterCommentDao;
import com.jerrymice.runner.personalCenter.comment.service.PersonalCenterCommentService;
import com.jerrymice.runner.personalCenter.information.service.PersonalCenterInformationService;
import com.jerrymice.runner.personalCenter.order.service.PersonalCenterOrderService;
import com.jerrymice.runner.personalCenter.user.service.PersonalCenterUserService;

@Controller
public class PersonalCenterUserController {
	@Resource(name="PersonalCenterUserServiceImpl")
	private PersonalCenterUserService PersonalCenterUserService;
	@Resource(name="PersonalCenterInformationServiceImpl")
	private PersonalCenterInformationService PersonalCenterInformationService;
	@Resource(name="PersonalCenterOrderServiceImpl")
	private PersonalCenterOrderService PersonalCenterOrderService;
	@Resource(name="PersonalCenterCommentServiceImpl")
	private PersonalCenterCommentService PersonalCenterCommentService;
	
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
		
		return "pc_home";
	}
	
	@RequestMapping(value="/showInformation")
	public String showInformation(Model model) {
		//得到用户基本信息和详细信息
		User user = PersonalCenterUserService.findByEmail("123456789@qq.com");
		Information information = PersonalCenterInformationService.findById(user.getId());
		
		//获取头像、昵称等界面展示所需信息
		String nickname = user.getNickname();
		String headportrait = user.getHeadPortrait();
		String email = user.getEmail();
		String sex = information.getSex();
		String age = information.getAge();
		String school = information.getSchool();
		int total = PersonalCenterOrderService.orderCounts();
		int finished = PersonalCenterOrderService.orderFinished();
		int unfinished = PersonalCenterOrderService.orderUnfinished();
		int two = PersonalCenterCommentService.getTwoScore();
		int four = PersonalCenterCommentService.getFourScore();
		int six = PersonalCenterCommentService.getSixScore();
		int eight = PersonalCenterCommentService.getEightScore();
		int ten = PersonalCenterCommentService.getTenScore();
		
		
		model.addAttribute("nickname", nickname);
		model.addAttribute("headportrait", headportrait);
		model.addAttribute("email", email);
		model.addAttribute("sex", sex);
		model.addAttribute("age", age);
		model.addAttribute("school", school);
		model.addAttribute("total", total);
		model.addAttribute("finished", finished);
		model.addAttribute("two", two);
		model.addAttribute("four", four);
		model.addAttribute("six", six);
		model.addAttribute("eight", eight);
		model.addAttribute("ten", ten);
		
		
		
		
		return "pc_myInformation";
	}
	
}
