<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>
<link href="${pageContext.request.contextPath}/css/style4.css" rel="stylesheet">
    <!-- zui -->
    <link href="${pageContext.request.contextPath}/css/zui.css" rel="stylesheet">

    <!-- ZUI Javascript 依赖 jQuery -->
    <script src="js/jquery-1.7.min.js"></script>
    <!-- ZUI 标准版压缩后的 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/js/zui.js"></script>
    <script src="${pageContext.request.contextPath}/js/iconfont.js"></script>
</head>
<body class="body">
      <div class="menu-se container-fluid">
        <ul class="nav nav-se">
            <li>
              <a href="issuanceOrders">
                <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-kuaidiyuan-xianxing"></use>
                </svg> 
                <div class="menu-text">
                找人代取
                </div>
              </a>
            </li>
            <li>
              <a href="orderCenter_orderCenter">
                <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-baoguofahuo-xianxing"></use>
                </svg> 
                <div class="menu-text">
                代取快递
                </div>
              </a>
            </li>
            <li>
              <a href="aboutUs.jsp">
                <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-tijikongjian-xianxing"></use>
                </svg> 
                <div class="menu-text">
                关于我们
                </div>
              </a>
            </li>
        </ul>
      </div>
      <!-- 轮播图 -->
      <div class="carousel container-fluid">
        <div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
          <!-- 圆点指示器 -->
          <ol class="carousel-indicators">
            <li data-target="#myNiceCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myNiceCarousel" data-slide-to="1"></li>
            <li data-target="#myNiceCarousel" data-slide-to="2"></li>
          </ol>

          <!-- 轮播项目 -->
          <div class="carousel-inner">
            <div class="item active">
              <img alt="First slide" src="http://zui.sexy/docs/img/slide1.jpg">
              <div class="carousel-caption">
               
              </div>
            </div>
            <div class="item">
              <img alt="Second slide" src="http://zui.sexy/docs/img/slide2.jpg">
              <div class="carousel-caption">
                
              </div>
            </div>
            <div class="item">
              <img alt="Third slide" src="http://zui.sexy/docs/img/slide3.jpg">
              <div class="carousel-caption">

              </div>
            </div>
          </div>

          <!-- 项目切换按钮 -->
          <a class="left carousel-control" href="#myNiceCarousel" data-slide="prev">
            <span class="icon icon-chevron-left"></span>
          </a>
          <a class="right carousel-control" href="#myNiceCarousel" data-slide="next">
            <span class="icon icon-chevron-right"></span>
          </a>
        </div>
      </div>
      <!--主要内容-->
      <div class="order container-fluid">
        <h3>我的快递</h3>
        <div class="panel">
          <div class="panel-heading">
            未完成
            <span><a href="orderManagement_issueOrder_inTransit.jsp"> 更多<i class="icon  icon-double-angle-right"></i></a></span>
            
          </div>
          <div class="panel-body">
            <div class="list-group">
            	<c:forEach items="${uncomplete}" var="uncomplete">
		              <div class="card orders">
		                <!-- 跳转到该订单详情页 -->
		                <a href="orderManagement_OrderDetails_inTransit.jsp">
		                  <img class="headimg" src="${pageContext.request.contextPath}/images/bike.png" height="100px" width="100px">
		                  <h3>${status[uncomplete.status] }</h3>
		                  <div class="box1">
		                    快递站点：${uncomplete.delivery}<br>
		                    送达地：${uncomplete.receipt}<br>
		                  </div>
		                </a>
		              </div>
		          </c:forEach>
            </div>
          </div>
          <div class="panel-heading">
            已完成
            <span><a href="orderManagement_issueOrder_arrived.jsp"> 更多<i class="icon  icon-double-angle-right"></i></a></span>
          </div>
          <div class="panel-body">
            <div class="list-group">
            	<c:forEach items="${complete}" var="complete">
		              <div class="card orders">
		                <!-- 跳转到该订单详情页 -->
		                <a href="orderManagement_OrderDetails_arrived.jsp">
		                  <img class="headimg" src="${pageContext.request.contextPath}/images/bike.png" height="100px" width="100px">
		                  <h3>${status[complete.status] }</h3>
		                  <div class="box1">
		                    快递站点：${complete.delivery}<br>
		                    送达地：${complete.receipt}<br>
		                  </div>
		                </a>
		              </div>
		          </c:forEach>
            </div>
          </div>
        </div>
      </div>
      <!-- 下方导航 -->
      <div class="menu ">
        <ul class="nav nav-primary">
          <li class="active">
            <a href="index">
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
            <a href="newMsg">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-liaotianduihua-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                消息
              </div>
            </a>
          </li>
          <li class="">
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