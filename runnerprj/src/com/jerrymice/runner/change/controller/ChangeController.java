package com.jerrymice.runner.change.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.change.service.ChangeService;
import com.jerrymice.runner.register.email.Email;

@Controller
@RequestMapping("/user")
public class ChangeController {

	@Resource(name = "changeServiceId")
	private ChangeService cs;

	@RequestMapping(value = "/changePasswd")
	public String changePassword(HttpSession session, HttpServletRequest request) {
		String oldEmail = (String) session.getAttribute("user");
		String newEmail = request.getParameter("email");
		String code = request.getParameter("code");
		Email email = (Email) session.getAttribute("email");
		if (email == null) {
			System.out.println("请先获取验证码！");
			return "changeEmail";
		} else {
			if (newEmail == null || code == null) {
				System.out.println("请补充完信息");
				return "changeEmail";
			} else {
				if (code.equals(email.getCode())) {
					cs.updateUser(oldEmail, newEmail);
					System.out.println("成功更改！");
					session.setAttribute("user", newEmail);
					return "success";
				}
			}
		}
		return "";
	}
	
	@RequestMapping(value="/changeEmail")
	public String sendMail(HttpServletRequest request, HttpSession session) {
		Email email = new Email();
		String emails = request.getParameter("email");
		email.sendEmail(emails);
		session.setAttribute("email", email);
		session.setAttribute("user", "1259196774@qq.com");
		System.out.println(email);
		System.out.println("发送验证码"+emails);
		return "changeEmail";
	}
}
