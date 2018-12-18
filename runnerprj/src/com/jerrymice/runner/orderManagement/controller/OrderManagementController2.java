package com.jerrymice.runner.orderManagement.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jerrymice.runner.entity.Order;
import com.jerrymice.runner.entity.User;
import com.jerrymice.runner.orderManagement.service.OrderManagementService;
import com.sun.org.apache.bcel.internal.classfile.Attribute;



@Controller
public class OrderManagementController2 {
	
	
	
	@Resource(name="orderManagementServiceId")
	private OrderManagementService orderManagementService;
	
	@RequestMapping("/orderDetails")
	public String orderAll(HttpServletRequest request) {
		String OId = request.getParameter("orderid");
		int orderid = Integer.parseInt(OId);
		int a = 123;
		User user=new User();
		user=this.orderManagementService.getuser(a);
		Object[] uid = {user,orderid};
		Order order=new Order();
		order=this.orderManagementService.findByOId(uid);
		request.getServletContext().setAttribute("order", order);
		
		/*
		
		
		if("".equals(otype)||otype==null)
		{
			
		}
		else if("4".equals(otype)) {
			List<Order> order1=this.orderManagementService.findByStatus2(uid);
			request.getServletContext().setAttribute("orderlist", order1);
		}
		else if("3".equals(otype)){
			List<Order> order1=this.orderManagementService.findByStatus3(uid);
			request.getServletContext().setAttribute("orderlist", order1);
		}
		else if("1".equals(otype)) {
			List<Order> order1=this.orderManagementService.findByStatus4(uid);
			request.getServletContext().setAttribute("orderlist", order1);
		}
		else {
			int status = Integer.parseInt(otype);
			Object[] uid2 = {user,status};
			List<Order> order1=this.orderManagementService.findByStatus(uid2);
			request.getServletContext().setAttribute("orderlist", order1);
		}
*/
		
		

		request.getServletContext().setAttribute("user2", user);
		return "om_orderDetails";
	}
}
