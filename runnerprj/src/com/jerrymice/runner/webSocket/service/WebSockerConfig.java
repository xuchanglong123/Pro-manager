package com.jerrymice.runner.webSocket.service;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Configuration
@EnableWebMvc
@EnableWebSocket
public class WebSockerConfig extends WebMvcConfigurerAdapter implements WebSocketConfigurer {

    @Bean
    public TextWebSocketHandler webSocketHandler(){
        return new MyHandler();
    }

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        //对正常连接的配置，就是浏览器支持websocket协议
        registry.addHandler(webSocketHandler(),"/websocket/socketServer.do").addInterceptors(new MyHandlerInterceptor());
        //如果浏览器不支持websocket协议，使用socketjs模拟websocket的连接
        registry.addHandler(webSocketHandler(),"/sockjs/socketServer.do").addInterceptors(new MyHandlerInterceptor()).withSockJS();
    }
}
