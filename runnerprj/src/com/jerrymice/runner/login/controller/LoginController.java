package com.jerrymice.runner.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.login.service.LoginService;

@Controller
@RequestMapping(value = "/user")
public class LoginController {

	@Resource(name = "loginServiceId")
	private LoginService loginService;

	@ModelAttribute
	public String models(Model model) {
		model.addAttribute("loginMessage","欢迎使用");
		return "login";
	}
	
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String passwd = request.getParameter("password");
		if (email==null || passwd==null) {
			session.setAttribute("loginMessage", "请补充完信息！");
			System.out.println("请补充完信息！");
			return "login";
		}else {
			if(loginService.isExist(email)) {
				if(loginService.islogin(email, passwd)) {
					//todo跳转成功页面 
					session.setAttribute("user", email);
					System.out.println("成功登陆");
					return "index";
				}
			}else {
				session.setAttribute("loginMessage", "该用户不存在，请重新输入");
				System.out.println("用户不存在");
				return "login";
			}
		}
		return "";
		
	}

}
