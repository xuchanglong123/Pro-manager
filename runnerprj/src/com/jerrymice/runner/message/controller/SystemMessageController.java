package com.jerrymice.runner.message.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.entity.SystemNotice;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.message.service.SystemMessageService;

@Controller
public class SystemMessageController {
	@Resource(name="systemMessageServiceId")
	private SystemMessageService systemMessageService;
	@RequestMapping("/sysMsg")
	public String findSys(HttpServletRequest request) {
		String queryString ="from SystemNotice sn where sn.uId=?";
		User l=new User();
		l.setId(123);
		Object[] values1={l};
		Object[] status= {"未结单","运送中","待接单方确认","已完成","已取消","已过期","接单方运送中","接单方已完成","已完成"};
		List<SystemNotice> list=this.systemMessageService.findSysMsg(queryString, values1);
		request.setAttribute("sysmsg", list);
		request.setAttribute("status", status);
		return "systemMessage";
	}
}
