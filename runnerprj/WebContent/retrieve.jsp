<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>找回密码</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/amazeui.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css">
  <!-- zui -->
    <link href="${pageContext.request.contextPath}/css/zui.min.css" rel="stylesheet">
    <!-- bch -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	//alert("${ReMessage}");
    	//点击链接的时候调用
        $("#linkToCart").click(
            function(){
   
            //得到input的值
            var count = $("#email").val();
   
            //设置linkToCart的href的值
            $("#linkToCart").attr("href","${pageContext.request.contextPath}user/email?email="+count);
        });
    })
    </script>
</head>
<body>
<div class="am-g">
	<!-- 标题栏 -->
	<div class="alert">
        <div>
          <a href="login.html"><i class="icon icon-chevron-left"></i></a>
          <h2>密码找回</h2>
        </div>
      </div>
      <!-- LOGO -->
	<div class="am-u-sm-12 am-text-center" style="padding-top: 10%">
		 <img src="${pageContext.request.contextPath}/images/runner.png">
	</div>
	<!-- 登陆框 -->
	<div class="am-u-sm-11 am-u-sm-centered loginDiv">
	<form class="am-form" action="/user/retrieve" method="post">
	  <fieldset class="myapp-login-form am-form-set fieldsetDiv">
		<div class="am-form-group am-form-icon">
			<i class="am-icon-user"></i>
			<input name="email" type="text" class="myapp-login-input-text am-form-field" placeholder="输入邮箱" onfocus="DZYXonfocu()"
			onblur="DZYXonblus()" id="email">
			<!-- <p id="DZYXerror">123</p> -->
		</div>
	    <div class="am-form-group am-form-icon">
			<i class="am-icon-lock"></i>
			<input name="code" type="text" class="myapp-login-input-text am-form-field" placeholder="输入验证码">
		</div>
		<a id="linkToCart"><button type="button" id="retrieveButton" class="myapp-login-form-submit am-btn am-btn-primary am-btn-block">获取</button></a>
		<div class="am-form-group am-form-icon">
			<i class="am-icon-lock"></i>
			<input name="password" type="password" class="myapp-login-input-text am-form-field" placeholder="输入旧密码" id="password">
		</div>
		<div class="am-form-group am-form-icon">
			<i class="am-icon-lock"></i>
			<input name="rePasswd" type="password" class="myapp-login-input-text am-form-field" placeholder="输入新密码"" id="confirmPassword">
		</div>
	  </fieldset>
	  
	  <button type="submit" class="myapp-login-form-submit am-btn am-btn-primary am-btn-block ">确认</button>
	</form>
	</div>
	<div class="am-text-center am-u-sm-11 am-u-sm-centered myapp-login-form-shortcut">
		<hr class="myapp-login-form-hr">
		
	</div>	
</div>
<div
  class="am-slider am-slider-default"
  data-am-flexslider="{controlNav: 'thumbnails', directionNav: false, slideshow: false}">
  <ul class="am-slides">
    <li data-thumb="http://s.amazeui.org/media/i/demos/pure-4.jpg?imageView2/0/w/360">
      </li>
  </ul>
</div>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<script src="js/app.js"></script>
<!-- ZUI Javascript组件 -->
<script src="js/zui.min.js"></script>
</body>
</html>