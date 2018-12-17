package com.jerrymice.runner.webSocket.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class MyHandler extends TextWebSocketHandler {
    //private static final Map<User,WebSocketSession> users = new HashMap<User,WebSocketSession>();
    private static final ArrayList<WebSocketSession> users = new ArrayList<WebSocketSession>();

    //固定的成员
//    private static final  List<String> people = new ArrayList<String>(); 
    
    private static Log looger = LogFactory.getLog(MyHandler.class);

    public MyHandler(){
//    	people.add("ljz");
//    	people.add("dzr");
    }

    //连接成功时候，触发js上的onopen方法
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        //super.afterConnectionEstablished(session);
        users.add(session);
        String username = (String) session.getAttributes().get("WEBSOCKET_USERNAME");
        System.out.println("用户 " + username + " Connection Established");
        session.sendMessage(new TextMessage(username + "上线了"));
        //System.out.println("建立连接成功......当前数量："+users.size());
        //session.sendMessage(new TextMessage("成功建立socket连接"));
        /**
         * 这块实现自己的业务，比如，当用户登陆后，会把离线消息推送给用户
         * TextMessage returnMessage = new TextMessage("你将收到的离线");
         * session.sendMessage(returnMessage);
         */
    }

    ////收到消息时触发的回调
    //@Override
    //public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
    //    //super.handleMessage(session, message);
    //    System.out.println("收到消息");
    //}

    //传输消息出错时触发的回调
    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        //super.handleTransportError(session, exception);
        String username = (String) session.getAttributes().get("WEBSOCKET_USERNAME");
        if (session.isOpen()) {
            session.close();
        }
        System.out.println("用户: " + username + " websocket connection closed......");
        users.remove(session);
    }

    //断开连接时触发的回调
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        //super.afterConnectionClosed(session, status);
        System.out.println("连接断开");
        String username= (String) session.getAttributes().get("WEBSOCKET_USERNAME");
        System.out.println("用户"+username+"已退出！");
        users.remove(session);
        System.out.println("剩余在线用户"+users.size());
    }

    /**
     * js调用websocket.send的时候，会调用该方法
     * @param session
     * @param message
     * @throws Exception
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        //super.handleTextMessage(session, message);
        String username = (String) session.getAttributes().get("WEBSOCKET_USERNAME");
        
        //获取提交过来的消息详情
        System.out.println("收到用户"+username+"的消息:"+message.toString());
        //分割成id和信息内容
        String[] messageInfo = message.getPayload().split("@");
        if (messageInfo.length != 2) {
            //出现错误
            sendMessageToUser(username, new TextMessage("500@服务器出错请稍后再发送吧"));
        } else {
            String target = messageInfo[0];    //用户名
            String content = messageInfo[1];   //消息
            // 遍历所有已连接用户
            for (WebSocketSession user : users) {
                if (user.getAttributes().get("WEBSOCKET_USERNAME").equals(target) && !username.equals(target)) {
                    //遇到匹配用户 连接正常则发送消息
                    if (user.isOpen()) {
                        sendMessageToUser(target, new TextMessage(content));
                    }else{//若异常则发送失败
                        sendMessageToUser(username, new TextMessage("404@对方在线异常,发送失败"));
                    }
                    return;
                }else if(user.getAttributes().get("WEBSOCKET_USERNAME").equals(target) && username.equals(target)){
                    sendMessageToUser(target,new TextMessage("200@您对自己说:"+content));
                    return;
                }
            }
            //未找到匹配用户 发送失败
            sendMessageToUser(username, new TextMessage("404@对方暂时不在线"));
        }
    }

    /**
     * 给某个用户发送消息
     *
     * @param userName
     * @param message
     */
    public void sendMessageToUser(String userName, TextMessage message) {
        for (WebSocketSession user : users) {
            if (user.getAttributes().get("WEBSOCKET_USERNAME").equals(userName)) {
                try {
                    if (user.isOpen()) {
                        user.sendMessage(message);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
                break;
            }
        }
    }

    /**
     * 给所有在线用户发送消息
     * 系统发送全员通知时可以使用
     * @param message
     */
    public void sendMessageToUsers(TextMessage message) {
        for (WebSocketSession user : users) {
            try {
                if (user.isOpen()) {
                    user.sendMessage(message);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //是否处理分片消息
    @Override
    public boolean supportsPartialMessages() {
        return super.supportsPartialMessages();
    }
}
