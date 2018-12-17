package com.jerrymice.runner.webSocket.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.TextMessage;

import com.jerrymice.runner.webSocket.entity.User;
import com.jerrymice.runner.webSocket.service.MyHandler;

@Controller
public class WebsocketController {
    //private static Map<String,User> userMap = new HashMap<String, User>();
	private static List<User> users = new ArrayList<User>();
	
    @Bean
    public MyHandler infoHandler() {
        return new MyHandler();
    }

    @RequestMapping("/websocket/login")
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        //String password = request.getParameter("passwd");
        //userMap.put(username,new User(username,password));
        System.out.println(username+"登录");
        HttpSession session = request.getSession(false);
        session.setAttribute("SESSION_USERNAME", username);
//        if(username == "bch") {
//        	session.setAttribute("name", "ljz");
//        }else {
//        	session.setAttribute("name", "bch");
//        }
//        session.setAttribute("name", "bch");
        //response.sendRedirect("/quicksand/jsp/websocket.jsp");
        return new ModelAndView("list");
    }
    
    @RequestMapping("/websocket/who")
    public ModelAndView who(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String who = request.getParameter("who");
        System.out.println("跟"+who+"聊天");
        HttpSession session = request.getSession(false);
        session.setAttribute("who", who);
        return new ModelAndView("message");
    }

    @RequestMapping("/websocket/logins")
    public ModelAndView login1(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        //String password = request.getParameter("passwd");
        //userMap.put(username,new User(username,password));
        System.out.println(username+"登录");
        HttpSession session = request.getSession(false);
        session.setAttribute("SESSION_USERNAME", username);
        session.setAttribute("names", "ljz");
        //response.sendRedirect("/quicksand/jsp/websocket.jsp");
        return new ModelAndView("message2");
    }
    
    @RequestMapping("/websocket/send")
    @ResponseBody
    public String send(HttpServletRequest request) {
        String username = request.getParameter("username");
        infoHandler().sendMessageToUser(username, new TextMessage("你好，测试！！！！"));
        return null;
    }
    
}
