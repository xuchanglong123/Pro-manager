<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>个人中心</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <!-- zui -->
    <link href="css/zui.css" rel="stylesheet">
    <!-- ZUI 标准版压缩后的 CSS 文件 -->

    <!-- ZUI Javascript 依赖 jQuery -->
    <script src="js/jquery-1.7.min.js"></script>
    <!-- ZUI 标准版压缩后的 JavaScript 文件 -->
    <script src="js/zui.js"></script>
    <script src="js/iconfont.js"></script>
    <!-- ZUI 标准版压缩后的 CSS 文件 -->
    <link href="css/zui.min.css" rel="stylesheet">
	<!-- ZUI Javascript 依赖 jQuery -->
	<script src="js/jquery-1.7.min.js"></script>
	<!-- ZUI 标准版压缩后的 JavaScript 文件 -->
	<script src="js/zui.min.js"></script>
	<!--****************自定义CSS**************-->
	<link rel="stylesheet" href="css/pc_login.css">
</head>
<body>
	<!--顶部资料卡-->
	<div class="datatop" style="background-image:url(images/personalCenter/wenli2.png)">
		<a href="personalCenter_homepage.jsp"><img src="${headportrait}" class="photo"></a>
		<span class="name">${nickname}</span>
		<img src="images/personalCenter/man.png" class="sex">
		<span class="age">${age}</span>
		
	</div>
	<!--****************************************************************************-->
	<div class="space"></div>
	<a href="personalCenter_wallet.jsp">
	<div class="dataselect">
		<img src="images/personalCenter/wallet.png" class="mark">
		<span class="dataselect_text">我的钱包</span>

	</div>
	</a>
	<div class="space"></div>
	<a href="orderManagement_issueOrder_all.jsp">
	<div class="dataselect">
		<img src="images/personalCenter/order.png" class="mark">
		<span class="dataselect_text">订单中心</span>

	</div>
	</a>
	<a href="personalCenter_studentID_unfinished.jsp">
	<div class="dataselect">
		<img src="images/personalCenter/student.png" class="mark">
		<span class="dataselect_text">学生认证</span>

	</div>
	</a>
	<div class="space"></div>
	<a href="systemSetup.jsp">
	<div class="dataselect">
		<img src="images/personalCenter/setting.png" class="mark">
		<span class="dataselect_text">设置</span>

	</div>
	</a>

	<!-- 下方导航 -->
      <div class="menu ">
        <ul class="nav nav-primary">
          <li class="">
            <a href="index.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-shouye-xianxing"></use> 
              </svg> 
              <div class="menu-text">
              首页
              </div>
            </a>
          </li>
          <li class="">
            <a href="orderCenter_orderCenter.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-baoguofahuo-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                代取
              </div>
            </a>
          </li>
          <li class="">
            <a href="issuanceOrders.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-jijianfasong-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                发单
              </div>
            </a>
          </li>
          <li class="">
            <a href="newMessage.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-liaotianduihua-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                消息
              </div>
            </a>
          </li>
          <li class="active">
            <a href="personalCenter_login.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-yonghu-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                我
              </div>
            </a>
          </li>
        </ul>
      </div>








</body>
</html>