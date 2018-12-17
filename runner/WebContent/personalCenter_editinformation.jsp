<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>编辑信息</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ZUI 标准版压缩后的 CSS 文件 -->
    <link href="css/zui.min.css" rel="stylesheet">
	<!-- ZUI Javascript 依赖 jQuery -->
	<script src="js/jquery-1.7.min.js"></script>
	<!-- ZUI 标准版压缩后的 JavaScript 文件 -->
	<script src="js/zui.min.js"></script>
	<script src="js/zui.jedate.js"></script>
	<!--****************自定义CSS**************-->
	<link rel="stylesheet" href="css/pc_editinformation.css">
	<!--******************外部引用包************-->
	<link href="lib/datetimepicker/datetimepicker.min.css" rel="stylesheet">
	<script src="lib/datetimepicker/datetimepicker.min.js"></script>
</head>
<body>
	<div class="banner">
		<a href="personalCenter_homepage.jsp"><img src="images/personalCenter/backblack.png" class="back"></a>
		编辑资料
		<a href="personalCenter_homepage.jsp"><span>提交</span></a>
	</div>
	<div class="Wall">
		<img src="images/personalCenter/defaultWall.jpg">
		<a href="#"><span>点击上传专属封面</span></a>
	</div>
	<div class="space">
		<span>基本资料</span>
	</div>
	<div class="Photo">
		<img src="images/personalCenter/defaultPhoto.jpg">
		<a href="#"><span>点击上传头像</span></a>
	</div>
	<div class="spaces"></div>
	<div class="data">
		<span>昵称：</span>
		<input type="text" name="name" value="我是刘金辀" class="name">
	</div>
	<div class="data">
		<span>性别：</span>
		<label>
    		<input type="radio" name="sex" value="man"> 男
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		<input type="radio" name="sex" value="woman"> 女
  		</label>
	</div>
	<div class="data">
		<span>手机：</span>
		<input type="text" name="name" value="请输入手机号" class="name">
		<select>
			<option value="0">仅自己可见</option>
			<option value="0">所有人可见</option>
		</select>
	</div>
	<div class="data">
		<span>姓名：</span>
		<input type="text" name="name" value="请输入真实姓名" class="name">
		<select>
			<option value="0">仅自己可见</option>
			<option value="0">所有人可见</option>
		</select>
	</div>
	<div class="data">
		<span>生日：</span>
		<input type="date" class="dateselect">
		<select>
			<option value="0">仅自己可见</option>
			<option value="0">所有人可见</option>
		</select>
	</div>
		<div class="data">
		<span>地区：</span>
        <select class='city'>
            <option value=''>--请选择省--</option>
        </select>
        <select class='city'>
            <option value=''>--请选择市--</option>
        </select>	
	</div>
	<div class="data">
		<span>学校：</span>
        <select class='city'>
            <option value=''>--请选择学校--</option>
        </select>	
	</div>
	<div class="data">
		<span>简介：</span>
        <input type="text" value="这个人很神秘，什么介绍都没有" class="name">	
	</div>
	<div class="space3"></div>



</body>



</html>