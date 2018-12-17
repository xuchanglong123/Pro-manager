<%--
  Created by IntelliJ IDEA.
  User: 白晨皓
  Date: 2018/12/7
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>消息发送页面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/chat.css"/>
</head>
<body>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/flexible.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
<script type="text/javascript">
    var websocket = null;
    if ('WebSocket' in window) {
        //Websocket的连接
        websocket = new WebSocket("ws://localhost:8080/websocket/socketServer.do");//WebSocket对应的地址
    }
    else if ('MozWebSocket' in window) {
        //Websocket的连接
        websocket = new MozWebSocket("ws://localhost:8080/websocket/socketServer.do");//SockJS对应的地址
    }
    else {
        //SockJS的连接
        websocket = new SockJS("http://localhost:8080/sockjs/socketServer");    //SockJS对应的地址
    }
    websocket.onopen = onOpen;
    websocket.onmessage = onMessage;
    websocket.onerror = onError;
    websocket.onclose = onClose;

    function onOpen(openEvt) {
        //alert(openEvt.Data);
    }

    function onMessage(evt) {
        $("#content").append(
        		"<div class='send'>"+
                "<div class='msg'>"+
        "<img src='${pageContext.request.contextPath}/images/touxiangm.png'/>" +
        "<p><i class='msg_input'></i>"+evt.data+"</p>" +
        "</div>"+
         "</div>"
        		); // 接收后台发送的数据
    }
    function onError() {
    }
    function onClose() {
    }

    function doSend() {
        if (websocket.readyState === websocket.OPEN) {
            websocket.send($("#targetName").val()+"@"+$("#inputMsg").val());//调用后台handleTextMessage方法
            console.log("发送成功!");
            $("#content").append(
            		
            		"<div id='words' class='show'> " +
                    "<div class='msg'>" +
                        "<img src='${pageContext.request.contextPath}/images/touxiang.png'/>" +
                        "<p><i class='msg_input'></i>"+$("#inputMsg").val()+"</p>" +
                   "</div>" +
                "</div>"
            );
        } else {
            console.log("连接失败!"+websocket.readyState);
        }
    }

    window.close = function () {
        websocket.onclose();
    }
</script>
<input type="text" id = "targetName" style="display: none" value="${who}" /><br>

<header class="header">
            <a class="back" href="javascript:history.back()"></a>
            <h5 class="tit">追星星的人</h5>
            <div class="right">资料</div>
        </header>
        <div class="message" id="content">

        </div>
        <div class="footer">
            <img src="${pageContext.request.contextPath}/images/hua.png" alt="" />
            <img src="${pageContext.request.contextPath}/images/xiaolian.png" alt="" />
            <input id="inputMsg" type="text"/>
            <button onclick="doSend();">发送</button>
        </div>
</body>
</html>
