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
  <title>修改邮箱</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="i" href="">
  <link rel="icon" href="${pageContext.request.contextPath}/images/logo.ico"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/amazeui.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css">
  <!-- zui -->
    <link href="${pageContext.request.contextPath}/css/zui.css" rel="stylesheet">
    <!-- bch -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	alert("${ReMessage}");
    	//点击链接的时候调用
        $("#linkToCart").click(
            function(){
   
            //得到input的值
            var count = $("#email").val();
   
            //设置linkToCart的href的值
            $("#linkToCart").attr("href","${pageContext.request.contextPath}/user/changeEmail?email="+count);
        });
    })
    </script>
</head>
<body>
<div class="am-g">
	<!-- 标题栏 -->
	<div class="alert">
        <div>
          <a href="safe.html"><i class="icon icon-chevron-left"></i></a>
          <h2>修改邮箱</h2>
        </div>
      </div>
	<!-- 登陆框 -->
	<div class="am-u-sm-11 am-u-sm-centered loginDiv">
	<form class="am-form" method="post" action="/user/changePasswd">
	  <fieldset class="myapp-login-form am-form-set fieldsetDiv">
		<div class="am-form-group am-form-icon">
      <i class="am-icon-user"></i>
      <input name="email" type="text" class="myapp-login-input-text am-form-field" placeholder="输入新的邮箱" onfocus="DZYXonfocu()"
      onblur="DZYXonblus()" id="email">
      <!-- <p id="DZYXerror">123</p> -->
    </div>
    <a id="linkToCart" href="#"><button type="button" id="emailButton" class="myapp-login-form-submit am-btn am-btn-primary am-btn-block">获取</button></a>
    <div class="am-form-group am-form-icon">
      <i class="am-icon-user"></i>
      <input name="code" type="text" class="myapp-login-input-text am-form-field" placeholder="输入发送到新邮箱的验证码" onfocus="DZYXonfocu()"
      onblur="DZYXonblus()" id="email">
      <!-- <p id="DZYXerror">123</p> -->
    </div>
	  </fieldset>
	  <a href="safe.html"><button type="submit" class="myapp-login-form-submit am-btn am-btn-primary am-btn-block ">确定</button></a>
	</form>
    </div>
    </div>
<script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<!-- ZUI Javascript组件 -->
<script src="${pageContext.request.contextPath}/js/zui.min.js"></script>
</body>
</html>