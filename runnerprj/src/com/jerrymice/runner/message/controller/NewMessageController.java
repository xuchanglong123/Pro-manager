package com.jerrymice.runner.message.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.entity.ChatRecord;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.message.service.NewMessageService;

@Controller
public class NewMessageController {
	@Resource(name="newMessageServiceId")
	private NewMessageService newMessageService;
	@RequestMapping("/newMsg")
	public String findNew(HttpServletRequest request) {
		String queryString1="from ChatRecord cr where cr.uId=?"+"group by cr.talkerId";
		User l=new User();
		l.setId(123);
		Object[] values1={l};
		List<ChatRecord> list=this.newMessageService.findNewMsg(queryString1, values1);
		request.setAttribute("msg", list);
		System.out.println();
		return "message";
	}
}
