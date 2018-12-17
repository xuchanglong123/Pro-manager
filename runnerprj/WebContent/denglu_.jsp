<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Running Man:注册页面</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" type="text/css" href="css/style3.css">
    <link rel="stylesheet" type="text/css" href="css/style2.css">
    <link rel="icon" href="images/logo.ico">
    <script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/jquery.jqlouds.min.js"></script>
    <script>
        jQuery(function ($) {
            $('#sky').jQlouds({
                wind: true
            });
        });
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>

</head>
<body>
<div id="sky" style="height:225px;"></div>
<div class="con_wrap wrap_show">
    <div class="motor_hook">
        <div class="motor_wrap">
            <div class="man">
                <div class="head"></div>
                <div class="body"></div>
            </div>
            <div class="motor">
                <div class="wheel_front"></div>
                <div class="wheel_back"></div>
                <div class="motor_body"></div>
                <div class="motor_handle"></div>
                <div class="motor_pipe">
                    <i class="pipe"></i>
                    <i class="smoke smoke_1"></i>
                    <i class="smoke smoke_2"></i>
                </div>
            </div>
        </div>
        <div class="motor_shadow"></div>
    </div>
</div>
<div class="main">
    <!-----start-main---->
    <form method="post" action="/websocket/logins">
        <div class="lable-2">
            <input name="username" type="text" class="text" placeholder="用户名" id="email" onfocus="DZYXonfocu()"
                   onblur="DZYXonblus()">
            <p id="DZYXerror"></p>
        </div>
        <div class="lable-2"></div>
        <div class="lable-2">
            <input name="passwd" type="password" id="password" class="text" placeholder="密码" onfocus="MMonfocu()"
                   onblur="MMonblus()">
            <p id="MMerror"></p>
        </div>
        <div class="clear"></div>
        <div class="submit">
            <input type="submit" value="Sign in">
        </div>
        <div class="clear"></div>
    </form>
    <!-----//end-main---->
</div>
<!-----start-copyright---->
<div class="copy-right">
    <!--末尾提示：-->
    <p id="p1">More information about &nbsp;&nbsp;<a href="#" target="_blank" title="代跑侠">代跑侠</a></p>
</div>
</body>
</html>
