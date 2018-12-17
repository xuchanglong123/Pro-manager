package com.jerrymice.runner.retrieve.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.register.email.Email;
import com.jerrymice.runner.retrieve.service.RetrieveService;

@Controller
@RequestMapping(value="/user")
public class RetrieveController {

	@Resource(name="retrieveServiceId")
	private RetrieveService rs;
	
	@RequestMapping(value="/retrieve")
	public String change(HttpServletRequest request,HttpSession session, Model model) {
		Email emails = (Email) session.getAttribute("email");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String code = request.getParameter("code");
		String repassword = request.getParameter("rePasswd");
		if(emails==null) {
			//要先获取验证码
			System.out.println("请先获取验证码！");
			model.addAttribute("ReMessage", "请先获取验证码！");
			return "retrieve";
		}else {
			if (email.equals(null) || code.equals(null) || password.equals(null) || repassword.equals(null)) {
				model.addAttribute("ReMessage", "请把注册信息填完整！");
				System.out.println("请把注册信息填完整！");
				return "retrieve";
			} else {
				if (rs.isExist(email)) {
					if (!code.equals(emails.getCode())) {
						System.out.println("验证码输入错误，请重新获取！");
						model.addAttribute("ReMessage", "验证码输入错误，请重新获取！");
						return "retrieve";
					} else {
						if(rs.isOk(email, password,repassword)) {
							System.out.println("成功更改密码！");
							return "success";
						}
						System.out.println("失败！");
						return "retrieve";
					}
					} else {
						
					}
				}
			}
		return "retrieve";
		}
	
	@RequestMapping(value="/email")
	public String sendMail(HttpServletRequest request, HttpSession session) {
		Email email = new Email();
		String emails = request.getParameter("email");
		email.sendEmail(emails);
		session.setAttribute("email", email);
		System.out.println(email);
		return "retrieve";
	}
}
