package com.jerrymice.runner.register.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jerrymice.runner.entity.Information;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.register.email.Email;
import com.jerrymice.runner.register.service.RegisterService;

@Controller
@RequestMapping(value = "/user")
public class RegisterController {
	@Resource(name = "registerServiceId")
	private RegisterService re;

	@ModelAttribute
	public void save(Model model) {
		model.addAttribute("message", "请获取验证码！");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String register(HttpServletRequest request, HttpSession session, Model model) {
		Email emails = (Email) session.getAttribute("email");
		String password = request.getParameter("passwd");
		String email = request.getParameter("email");
		String code = request.getParameter("code");
		String repassword = request.getParameter("rePasswd");
		if (emails == null) {
			model.addAttribute("message", "请先获取验证码");
			System.out.println("请先获取验证码");
			return "register";
		} else {
			if (email.equals(null) || code.equals(null) || password.equals(null) || repassword.equals(null)) {
				model.addAttribute("message", "请把注册信息填完整！");
				System.out.println("请把注册信息填完整！");
				return "register";
			} else {
				if (!re.isExist(email)) {
					if (!password.equals(repassword)) {
						model.addAttribute("message", "两次密码输入不一样");
						System.out.println("两次密码输入不一样");
						return "register";
					} else {
						if (!code.equals(emails.getCode())) {
							model.addAttribute("message", "验证码输入错误，请重新获取！");
							System.out.println("验证码输入错误，请重新获取！");
							return "register";
						} else {
							User user = new User();
							Information information = new Information();
							user.setInformation(information);
							user.setEmail(email);
							user.setPassword(password);
							user.setHeadPortrait("images/touxiang.png");
							user.setNickname("默认用户名");
							information.setUser(user);
							re.saveUser(user);
							return "index";
						}
					}
				}
			}
		}
		model.addAttribute("message", "此邮箱已经注册，请更换邮箱注册！");
		return "register";
	}

	@RequestMapping(value = "/sendEmail")
	public String sendMail(HttpServletRequest request, HttpSession session) {
		Email email = new Email();
		String emails = request.getParameter("email");
		email.sendEmail(emails);
		session.setAttribute("email", email);
		System.out.println(email);
		return "register";
	}

}
